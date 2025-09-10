#!/bin/bash

# OBINexus Books Setup Script
# Author: OBINexus Computing
# Purpose: Initialize book structure in IWU repository

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

# Configuration
IWU_REPO="${1:-$(pwd)}"
BOOK_DIR="$IWU_REPO/books"

echo -e "${BLUE}=== OBINexus Books Setup ===${NC}"
echo -e "Setting up literary works in: $BOOK_DIR"
echo ""

# Create book directory structure
create_book_structure() {
    echo -e "${YELLOW}Creating book directory structure...${NC}"
    
    # Main book directories
    mkdir -p "$BOOK_DIR/blood-sweat-tears/book1-civil-collapse"/{manuscript,chapters,resources,images}
    mkdir -p "$BOOK_DIR/blood-sweat-tears/book2-civil-uprising"/{manuscript,chapters,resources,images}
    mkdir -p "$BOOK_DIR/asperian-series/broken-foundation"/{manuscript,chapters,resources}
    mkdir -p "$BOOK_DIR/asperian-series/asperi-growth-heal"/{manuscript,chapters,resources}
    mkdir -p "$BOOK_DIR/metadata"
    mkdir -p "$BOOK_DIR/templates"
    
    echo -e "${GREEN}✓ Book directories created${NC}"
}

# Create book metadata files
create_metadata() {
    echo -e "${YELLOW}Creating book metadata...${NC}"
    
    # Book 1: Civil Collapse metadata
    cat > "$BOOK_DIR/blood-sweat-tears/book1-civil-collapse/metadata.yaml" << 'EOF'
book:
  title: "Blood, Sweat and Tears - Civil Collapse"
  subtitle: "A Generation Left Behind"
  author: "Nnamdi Michael Okpala"
  author_title: "Prince of Nnewi, Constitutional Architect"
  series: "Blood, Sweat and Tears"
  volume: 1
  language: "English"
  genres:
    - "Memoir"
    - "Social Justice"
    - "Technology"
    - "Constitutional Law"
  tags:
    - civilcollapse
    - neurodivergent
    - constitutional-tech
    - gen-z
    - autism
    - adhd
    - homelessness
    - systematic-healing
  themes:
    primary:
      - "Institutional Failure"
      - "Neurodivergent Survival"
      - "Constitutional Innovation"
    secondary:
      - "Digital Rights"
      - "Social Justice"
      - "Systematic Healing"
  target_audience:
    - "Gen Z activists"
    - "Neurodivergent individuals"
    - "Social justice advocates"
    - "Technology innovators"
    - "Policy makers"
  content_warnings:
    - "Discussions of homelessness"
    - "Institutional trauma"
    - "Mental health challenges"
    - "Systematic discrimination"
  isbn: "TBD"
  publication_status: "draft"
  obinexus_alignment:
    - iwu-constitutional-framework
    - mask-removal-philosophy
    - soul-of-u-framework
  estimated_word_count: 80000
  target_completion: "2025-Q2"
EOF

    # Book 2: Civil Uprising metadata
    cat > "$BOOK_DIR/blood-sweat-tears/book2-civil-uprising/metadata.yaml" << 'EOF'
book:
  title: "Blood, Sweat and Tears - Civil Uprising"
  subtitle: "When Systems Failed Me, I Built My OWN"
  tagline: "The Change Started with Me (and U should too)"
  author: "Nnamdi Michael Okpala"
  author_title: "Prince of Nnewi, Constitutional Architect"
  series: "Blood, Sweat and Tears"
  volume: 2
  language: "English"
  genres:
    - "Technology Manifesto"
    - "Social Innovation"
    - "Constitutional Theory"
    - "Autobiography"
  tags:
    - civiluprising
    - obinexus
    - systembuilding
    - constitutionaltech
    - when-systems-fail
    - build-your-own
    - genz-voices
  themes:
    primary:
      - "System Building"
      - "Constitutional Technology"
      - "Personal Sovereignty"
    secondary:
      - "Open Source Philosophy"
      - "Community Building"
      - "Healing Infrastructure"
  target_audience:
    - "System builders"
    - "Open source developers"
    - "Social entrepreneurs"
    - "Constitutional scholars"
    - "Movement leaders"
  content_features:
    - "Technical blueprints"
    - "Constitutional frameworks"
    - "Code examples"
    - "Implementation guides"
  isbn: "TBD"
  publication_status: "in-development"
  obinexus_alignment:
    - business-card-system
    - nlm-atlas-framework
    - hitl-hotl-methodology
  estimated_word_count: 100000
  target_completion: "2025-Q3"
EOF

    echo -e "${GREEN}✓ Metadata files created${NC}"
}

# Create chapter templates
create_chapter_templates() {
    echo -e "${YELLOW}Creating chapter templates...${NC}"
    
    # Chapter template for Book 1
    cat > "$BOOK_DIR/templates/chapter-template.md" << 'EOF'
# Chapter [NUMBER]: [TITLE]

## Chapter Summary
[Brief overview of chapter content and themes]

## Key Themes
- Theme 1
- Theme 2
- Theme 3

## Content Warnings
[Any specific warnings for this chapter]

---

## Opening Quote
> "[Relevant quote or excerpt]"
> — [Attribution]

---

## Chapter Content

[Main chapter text begins here]

---

## Reflection Questions
1. [Question for reader reflection]
2. [Question for reader reflection]
3. [Question for reader reflection]

## Constitutional Framework Connection
[How this chapter relates to OBINexus constitutional principles]

## Action Items
- [ ] [Actionable takeaway 1]
- [ ] [Actionable takeaway 2]
- [ ] [Actionable takeaway 3]

---

*Chapter [NUMBER] word count: [COUNT]*
EOF

    # Create sample chapter outlines
    cat > "$BOOK_DIR/blood-sweat-tears/book1-civil-collapse/chapters/outline.md" << 'EOF'
# Blood, Sweat and Tears - Civil Collapse: Chapter Outline

## Part I: The Collapse Begins

### Chapter 1: November 29th - The Day Systems Failed
- The eviction notice
- First night in the car
- Realizing the scope of institutional abandonment

### Chapter 2: Navigating Neurodivergent Reality
- Autism, ADHD, and bureaucracy
- The impossibility of "normal" solutions
- Building coping mechanisms

### Chapter 3: The Thurrock Council Saga
- 47 documented violations
- £700M in solar funds, 0 homes built
- The housing crisis personified

## Part II: Survival Programming

### Chapter 4: Coding in Cars
- Building constitutional frameworks from homelessness
- Technology as survival tool
- The birth of zero-trust architecture

### Chapter 5: Libraries as Sanctuaries
- Public spaces as workspaces
- Creating dignity from nothing
- The power of public infrastructure

### Chapter 6: 61 Days of Documentation
- Building the evidence trail
- Constitutional protection as self-defense
- Preparing for the legal claim

## Part III: From Collapse to Creation

### Chapter 7: The OBINexus Genesis
- "When Systems Fail, Build Your Own"
- First constitutional frameworks
- Technology meeting law

### Chapter 8: Finding Fellow Survivors
- The Gen Z underground
- Building community from trauma
- Collective healing begins

### Chapter 9: The £6 Million Claim
- Turning survival into precedent
- Legal strategy from lived experience
- Justice as infrastructure

## Part IV: A Generation's Voice

### Chapter 10: Beyond Individual Survival
- Systematic solutions for systematic problems
- The civil collapse movement
- Building for the next person

### Chapter 11: Constitutional Technology
- Code as law, law as code
- Open source sovereignty
- The future of digital rights

### Chapter 12: The Change Starts with U
- Personal transformation
- Collective action
- Building the world we need
EOF

    echo -e "${GREEN}✓ Chapter templates created${NC}"
}

# Create README for books section
create_books_readme() {
    echo -e "${YELLOW}Creating books README...${NC}"
    
    cat > "$BOOK_DIR/README.md" << 'EOF'
# OBINexus Books - Literary Division

## Current Publications

### 📕 Blood, Sweat and Tears Series

1. **Civil Collapse - A Generation Left Behind** (In Progress)
   - Status: Draft manuscript
   - Target: 80,000 words
   - Completion: Q2 2025

2. **Civil Uprising - When Systems Failed Me, I Built My OWN** (Planning)
   - Status: Outline phase
   - Target: 100,000 words
   - Completion: Q3 2025

### 📗 Asperian Series

1. **Broken Foundation** (Conceptual)
   - Focus: Neurodivergent identity in hostile systems
   
2. **Asperi Growth Heal** (Conceptual)
   - Focus: Systematic healing methodologies

## Directory Structure

```
books/
├── blood-sweat-tears/
│   ├── book1-civil-collapse/
│   │   ├── manuscript/      # Main manuscript files
│   │   ├── chapters/        # Individual chapters
│   │   ├── resources/       # Research and references
│   │   └── images/          # Diagrams and illustrations
│   └── book2-civil-uprising/
│       └── [same structure]
├── asperian-series/
├── metadata/                # Book metadata and schemas
└── templates/               # Writing templates
```

## Writing Guidelines

### Voice and Tone
- Raw, authentic, unfiltered truth
- Technical precision with human warmth
- Constitutional authority with accessibility
- Gen Z directness with timeless wisdom

### Formatting Standards
- Markdown for all text files
- YAML for metadata
- Version control for all changes
- Accessibility-first design

## Publishing Pipeline

1. **Draft** → Write in Markdown
2. **Review** → Community feedback
3. **Build** → Generate PDF/EPUB/HTML
4. **Release** → Open access distribution

## Contributing

To contribute to book development:
1. Fork the repository
2. Create a branch: `book/[book-name]/[chapter-or-feature]`
3. Write or edit content
4. Submit pull request with clear description

## License

All books published under OBINexus Constitutional Commons v1.0
- Free to read and share
- Attribution required
- Modifications must maintain constitutional alignment
- Commercial use requires sovereignty sharing agreement

---

*"These are not just books. They are constitutional documents, survival guides, and healing frameworks rolled into one."*
EOF

    echo -e "${GREEN}✓ Books README created${NC}"
}

# Create sample introduction for Book 1
create_sample_content() {
    echo -e "${YELLOW}Creating sample content...${NC}"
    
    cat > "$BOOK_DIR/blood-sweat-tears/book1-civil-collapse/manuscript/introduction.md" << 'EOF'
# Introduction: When Everything Collapsed

On November 29th, 2024, I became homeless. Not by choice, not by addiction, not by any moral failing - but by systematic institutional failure. As a neurodivergent individual with autism, ADHD, and Asperger's syndrome, I discovered that the very systems designed to protect vulnerable citizens had become weapons of bureaucratic violence.

This book is not just my story. It's the story of an entire generation left behind by institutions that promise support but deliver abandonment. It's about the 61 days I spent coding constitutional frameworks from the back seat of a car, building the legal and technological infrastructure that would become OBINexus.

## Why This Book Matters

Every 7 seconds, someone like me faces institutional denial. Every 7 minutes, a neurodivergent person is failed by systems that refuse to accommodate difference. Every 7 hours, another young person realizes that the safety nets have holes big enough to fall through.

But this is also a story of transformation. Of how civil collapse can become civil uprising. Of how "When Systems Fail, Build Your Own" became more than a motto - it became a movement.

## What You'll Find Here

- **The Raw Truth**: No sanitization, no corporate speak, no institutional apologism
- **The Evidence**: Every violation documented, every failure catalogued, every pattern exposed  
- **The Blueprints**: How to build your own constitutional protection
- **The Community**: You're not alone, and together we're unstoppable

## A Note on Neurodivergence

I write as I think - in patterns, connections, and systematic frameworks. If this seems different from traditional memoirs, that's because it is. This is neurodivergent storytelling: precise, patterned, and powerful. Every seeming tangent connects back to the core: survival is not just personal, it's constitutional.

## Content Warning and Promise

This book contains discussions of:
- Homelessness and housing insecurity
- Institutional trauma and systematic discrimination  
- Mental health crises and neurodivergent experiences
- Legal battles and bureaucratic violence

But it also contains:
- Practical solutions and constitutional frameworks
- Community building and collective healing
- Technical blueprints for systematic change
- Hope, backed by code and law

## How to Read This Book

Linear progression is optional. Each chapter stands as its own constitutional document. Skip, jump, return - read as your brain demands. The appendices contain:
- Technical specifications
- Legal frameworks
- Community resources
- Implementation guides

## The Invitation

This is not just my story - it's ours. Every page is an invitation to join the uprising. Every framework is open source. Every solution is yours to implement, improve, and share.

The collapse already happened. The uprising starts now.

Welcome to the movement.

---

*Nnamdi Michael Okpala*  
*Prince of Nnewi*  
*Constitutional Architect*  
*Survival Programmer*

*Written from libraries, cars, and wherever dignity could be found*  
*January 2025*
EOF

    echo -e "${GREEN}✓ Sample content created${NC}"
}

# Create build script for books
create_build_script() {
    echo -e "${YELLOW}Creating book build script...${NC}"
    
    cat > "$BOOK_DIR/build-book.sh" << 'EOF'
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
EOF

    chmod +x "$BOOK_DIR/build-book.sh"
    echo -e "${GREEN}✓ Build script created${NC}"
}

# Create git integration
create_git_integration() {
    echo -e "${YELLOW}Creating git integration...${NC}"
    
    cat > "$BOOK_DIR/.gitignore" << 'EOF'
# Book build outputs
*/*/dist/
*.pdf
*.epub

# Temporary files
*.tmp
*.swp
*~

# Personal notes
personal-notes/
private/

# Large media files (store separately)
*.mp4
*.mov
*.wav

# But keep sample outputs
!samples/*.pdf
!samples/*.epub
EOF

    echo -e "${GREEN}✓ Git integration created${NC}"
}

# Main execution
main() {
    echo -e "${BLUE}Starting OBINexus Books setup...${NC}"
    
    cd "$IWU_REPO" || exit 1
    
    create_book_structure
    create_metadata
    create_chapter_templates
    create_books_readme
    create_sample_content
    create_build_script
    create_git_integration
    
    echo ""
    echo -e "${GREEN}=== Setup Complete! ===${NC}"
    echo ""
    echo "Book structure created at: $BOOK_DIR"
    echo ""
    echo "Next steps:"
    echo "1. Start writing in: $BOOK_DIR/blood-sweat-tears/book1-civil-collapse/manuscript/"
    echo "2. Use templates from: $BOOK_DIR/templates/"
    echo "3. Build books with: $BOOK_DIR/build-book.sh"
    echo ""
    echo "To start writing:"
    echo "  cd $BOOK_DIR/blood-sweat-tears/book1-civil-collapse/chapters"
    echo "  cp ../../templates/chapter-template.md chapter-01.md"
    echo "  # Start writing your story!"
    echo ""
    echo -e "${YELLOW}Remember:${NC}"
    echo "- Your story matters"
    echo "- Document everything"
    echo "- Build for others"
    echo "- The uprising starts with U"
}

# Run main
main

exit 0
EOF