all: clean build

build:
	rm -f _main.Rmd && R -q -e "tryCatch({ bookdown::render_book('index.Rmd', 'bookdown::gitbook', output_dir = 'docs') }, error = function(e) { datashield.errors() })"

clean:
	rm -rf _bookdown_files/
