FROM alpine:edge

RUN apk add tesseract-ocr tesseract-ocr-data-por py3-pdfminer ocrmypdf --no-cache

WORKDIR /ocr-test

RUN mkdir ocrmypdf
RUN mkdir tesseract

COPY pdfs/ pdfs/
COPY run-ocr-test.sh .

CMD ["./run-ocr-test.sh"]
