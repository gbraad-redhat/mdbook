Fedora image for mdBook-based generation
========================================


This Fedora container image contains:

  - mdBook: https://github.com/rust-lang/mdBook
    create book from markdown files, like Gitbook
  - mdBook preprocessor: https://crates.io/crates/mdbook-callouts
    preprocessor to add Obsidian Flavored Markdown's Callouts 


## Usage instructions
Start the container in the folder that contains your documentation source

```bash
$ podman run --rm -v $PWD:/workspace \
    ghcr.io/gbraad-redhat/mdbook:0.4.42 \
    mdbook build
```

This will generate a `book` output.
