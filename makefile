
convert_pdf_to_svg:
	mkdir -p static/figures/svg
	for pdf in static/figures/*.pdf; do \
		pdf2svg "$$pdf" "static/figures/svg/$$(basename "$$pdf" .pdf).svg"; \
	done

build:
	mkdir -p $@

clean:
	rm -rf build
