SHELL=/bin/bash
METRICS_INPUT_FILE:=cloudsqldescriptors.json
METRICS_OUTPUT_FILE:=cloudsqlmetricslocal.tf

SUMMARY_BOARD_SOURCE_FILE:=boards/summary.md
SUMMARY_BOARD_OUTPUT_FILE:=boards/summary.txt

SUMMARY_BOARD_NOTES_SOURCE_FILE:=boards/summary_notes.md
SUMMARY_BOARD_NOTES_OUTPUT_FILE:=boards/summary_notes.txt

terraformLocalMetric:
	../createMetricsLocal.sh --input_file $(METRICS_INPUT_FILE) --output_file $(METRICS_OUTPUT_FILE)

summaryMarkdown: 
	cat -vte $(SUMMARY_BOARD_SOURCE_FILE) | sed '$$!s/\$$/\\n/g' | tr -d '\n' > $(SUMMARY_BOARD_OUTPUT_FILE)

summaryNotes: 
	cat -vte $(SUMMARY_BOARD_NOTES_SOURCE_FILE) | sed '$$!s/\$$/\\n/g' | tr -d '\n' > $(SUMMARY_BOARD_NOTES_OUTPUT_FILE)