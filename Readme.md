# Bilbo TGS

Welcome to the Bilbo TGS repository!  
This repository contains collections of `.tgs` sticker files used in Bilbo Music. It serves as a centralized storage for animated stickers, ensuring consistency, reusability, and easy integration across Bilbo products.

---

## Contents

- **collections**: Organized sets of `.tgs` stickers grouped by theme, mood, or context.  
- **index.json**: Metadata file describing available stickers (used by Bilbo Music).  
- **naming conventions**: Standardized file naming to ensure compatibility and predictability.  

---

## Naming Rules

All `.tgs` files in this repository follow strict normalization rules:

- lowercase only  
- spaces and hyphens replaced with `_`  
- no numeric characters  
- no `emoji_` prefix  
- trimmed `_` at the start and end  

**Example:**
```
emoji_Happy Face-01.tgs → happy_face.tgs
```

If a name conflict occurs:
```
happy_face.tgs
happy_face_1.tgs
happy_face_2.tgs
```

---

## index.json Format

The repository includes an `index.json` file used by Bilbo Music to load stickers:

```
[
  { "code": "happy_face" },
  { "code": "sad_vibes" }
]
```

- `code` corresponds to the filename without `.tgs`  
- must be unique across the collection  

---

## Sources

Current sticker collections include assets sourced from:

- https://googlefonts.github.io/noto-emoji-animation/

All assets remain the property of their respective authors and are used in accordance with their original licenses.

This repository does not alter or override licensing terms.  

Additional sources may be added over time.

---

## Usage

To integrate stickers into Bilbo Music:

1. Add or update `.tgs` files in the appropriate collection  
2. Ensure filenames follow naming rules  
3. Regenerate `index.json`  
4. Commit changes  

---

## Contribution Guidelines

- Keep collections logically grouped  
- Avoid duplicate or near-duplicate stickers  
- Follow naming conventions strictly  
- Verify that `.tgs` files are valid and optimized  

---

## Purpose

Bilbo TGS ensures:

- consistent sticker naming  
- predictable integration  
- centralized asset management  
- easy scaling of sticker libraries  

---

Thank you for contributing to Bilbo TGS!