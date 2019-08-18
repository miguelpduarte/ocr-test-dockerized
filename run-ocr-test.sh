#!/usr/bin/env sh

tesseract_parse() {
    file="$1"
    echo "Tesseract parsing: $1"
}

omp_parse() {
    file="$1"
    # Without 'pdfs/' prefix directory
    unprefixed_file="${1#pdfs/}"

    echo "ocrmypdf parsing: $1"
    ocrmypdf -l por "$file" "ocrmypdf/$unprefixed_file"
}

for pdf_version in pdfs/*; do
    echo "#-> PDF Version: $pdf_version"
    echo;echo

    mkdir -p "tesseract/${pdf_version#pdfs/}"
    mkdir -p "ocrmypdf/${pdf_version#pdfs/}"

    for pdf in $pdf_version/*; do
	echo "##-> PDF file: $pdf"
	echo
	#tesseract_parse "$pdf"
	omp_parse "$pdf"
    done
done

