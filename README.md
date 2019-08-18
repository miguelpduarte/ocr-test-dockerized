# uporto-menu-ocr-test-dockerized

A test of OCR parsing of UPorto's canteen/restaurant menus. Dockerized, as all things should be :smile: 

## Requirements

Requires docker (if only all requirements were this simple...).

And `sh` if you don't want to copy paste the contents of `run-ocr-container.sh`, I guess :wink:

## Usage

Just run `./run-ocr-container.sh`. That's all it takes!

The test results will end up in folder `test_results`.

## Notes

- The tesseract OCR is not actually running - that idea was dropped since `ocrmypdf` uses `tesseract` as well, and would make its direct usage redundant, most likely. As such, the `tesseract` folder under `test_results` will always be empty. Should probably remove that, but not really any point as this was just a small test to be shared with some people that might find it interesting/useful.
