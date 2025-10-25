all: report

report:

exec:
	@for script in ./scripts/*; do \
		tsqlexec $$script; \
	done

.PHONY: all report exec
