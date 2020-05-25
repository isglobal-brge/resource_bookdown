all:
	rm -f _main.Rmd && R -q -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook', output_dir = 'docs')"

clean:
	rm -rf _bookdown_files/
