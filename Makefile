TEX_FILE := template
OUTDIR := build

.PHONY: build

build:
	@if ! [ -d "${OUTDIR}" ]; then \
		mkdir ${OUTDIR};  \
	 fi

	latexmk -pdf -xelatex -outdir=${OUTDIR} ${TEX_FILE}.tex

clean:
	rm -rf ${OUTDIR}
