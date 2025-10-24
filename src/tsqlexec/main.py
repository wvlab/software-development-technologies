import argparse
import sys
import tomllib
from pathlib import Path
from pprint import pprint

import pyodbc
from pydantic import BaseModel


class Config(BaseModel):
    driver: str = "ODBC Driver 18 for SQL Server"
    server: str = "localhost,1433"
    database: str = "master"
    username: str = "sa"
    password: str = "YourStrong@Passw0rd"


def config(path: Path | None) -> Config:
    if path:
        if not path.exists():
            raise RuntimeError(f"Config file not found at {path}")
        return Config.model_validate(tomllib.loads(path.read_text())["database"])

    current = Path.cwd().resolve()
    while True:
        cfg = current / "tsqlexec.toml"
        if cfg.exists():
            return Config.model_validate(tomllib.loads(cfg.read_text())["database"])

        if current.parent == current:
            raise RuntimeError("Couldn't find tsqlexec.toml")

        current = current.parent


def connection(cfg: Config) -> pyodbc.Connection:
    return pyodbc.connect(
        f"DRIVER={cfg.driver};"
        f"SERVER={cfg.server};"
        f"DATABASE={cfg.database};"
        f"UID={cfg.username};"
        f"PWD={cfg.password};"
        "Encrypt=no;TrustServerCertificate=yes;"
    )


def parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Execute SQL scripts via pyodbc")
    parser.add_argument(
        "script",
        nargs="?",
        help="Path to SQL script",
    )
    parser.add_argument(
        "--config",
        "-c",
        default=None,
        type=Path,
        help="Path to tsqlexec.toml",
    )
    parser.add_argument(
        "--stdin",
        "-s",
        default=False,
        action=argparse.BooleanOptionalAction,
        help="Read SQL from stdin",
    )
    parser.add_argument(
        "--echo",
        "-e",
        default=True,
        action=argparse.BooleanOptionalAction,
        help="Print SQL before execution",
    )
    parser.add_argument(
        "--show-result",
        "-r",
        default=True,
        action=argparse.BooleanOptionalAction,
        help="Print query results",
    )
    return parser


def sql(args) -> str:
    if args.stdin:
        return sys.stdin.read()

    script = Path(args.script).resolve()
    if not script.exists():
        raise RuntimeError(f"Couldn't find {script}")
    return script.read_text(encoding="utf-8")


def main() -> None:
    args = parser().parse_args()
    cfg = config(args.config)
    sqltext = sql(args)

    if args.echo:
        print(sqltext, "\n")

    with (
        connection(cfg) as conn,
        conn.cursor() as cursor,
    ):
        cursor.execute(sqltext)

        try:
            if not args.show_result:
                return

            rows = cursor.fetchall()
            for row in rows:
                pprint(row)

        except pyodbc.ProgrammingError:
            pass
        finally:
            cursor.commit()


if __name__ == "__main__":
    main()
