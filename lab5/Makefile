all: report

report:
	latexmk -C -auxdir=report report/report.tex
	latexmk -lualatex -shell-escape -auxdir=report -f report/report.tex

exec:
	@for script in ./scripts/*; do \
		tsqlexec $$script; \
	done

.PHONY: all report exec
