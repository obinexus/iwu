#!/bin/bash

# Book build script for OBINexus publications
BOOK_PATH="${1}"
OUTPUT_FORMAT="${2:-pdf}"

if [ -z "$BOOK_PATH" ]; then
    echo "Usage: ./build-book.sh <book-path> [format]"
    echo "Formats: pdf, epub, html"
    exit 1
fi

echo "Building book: $BOOK_PATH"
echo "Format: $OUTPUT_FORMAT"

# Create output directory
mkdir -p "$BOOK_PATH/dist"

# Build based on format
case "$OUTPUT_FORMAT" in
    pdf)
        echo "Generating PDF..."
        pandoc "$BOOK_PATH/manuscript/"*.md \
            -o "$BOOK_PATH/dist/book.pdf" \
            --toc \
            --toc-depth=3 \
            --pdf-engine=xelatex \
            -V geometry:margin=1in \
            -V fontsize=12pt
        ;;
    epub)
        echo "Generating EPUB..."
        pandoc "$BOOK_PATH/manuscript/"*.md \
            -o "$BOOK_PATH/dist/book.epub" \
            --toc \
            --epub-cover-image="$BOOK_PATH/images/cover.jpg"
        ;;
    html)
        echo "Generating HTML..."
        pandoc "$BOOK_PATH/manuscript/"*.md \
            -o "$BOOK_PATH/dist/book.html" \
            --toc \
            --toc-depth=3 \
            --standalone \
            --css="$IWU_REPO/assets/book-style.css"
        ;;
    *)
        echo "Unknown format: $OUTPUT_FORMAT"
        exit 1
        ;;
esac

echo "Build complete! Output in: $BOOK_PATH/dist/"
