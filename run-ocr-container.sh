#!/usr/bin/env sh

set -ue

image_tag="ocr-memes"
cid_file="docker.cid"

docker build -t "$image_tag" .
docker run --cidfile "$cid_file" "$image_tag"
mkdir -p test_results/
docker cp "$(cat "$cid_file")":/ocr-test/ocrmypdf test_results/
docker cp "$(cat "$cid_file")":/ocr-test/tesseract test_results/

# docker rm "$cid_file"
rm "$cid_file"
