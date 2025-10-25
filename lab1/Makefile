all: report

report:

exec: \
    create-db \
    modify-db-name \
    create-tables \
    add-discount-field \
    seed-tables \
    check-space-used \
    select-data

create-db:
	tsqlexec --autocommit ./scripts/db.sql

check-space-used:
	tsqlexec ./scripts/spaceused.sql

modify-db-name:
	tsqlexec ./scripts/renamedb.sql

create-tables:
	tsqlexec ./scripts/schema.sql

add-discount-field:
	tsqlexec ./scripts/discount.sql

seed-tables:
	tsqlexec ./scripts/seed.sql

select-data:
	tsqlexec ./scripts/select.sql

.PHONY: \
	all \
    report \
	exec \
    create-db \
    check-space-used \
    modify-db-name \
    create-tables \
    add-discount-field \
    seed-tables \
    select-data
