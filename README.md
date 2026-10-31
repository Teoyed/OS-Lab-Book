# Operating Systems Laboratory

An instructional manual for the Operating Systems Laboratory course at the
University of Mazandaran. It combines explanations, Linux command-line
examples, and hands-on practices for learning operating systems concepts.

## Contents

The book contains ten chapters covering:

1. Virtual machines and Linux installation
2. The Linux file system, command line, users, and groups
3. File permissions and access control
4. Working with text files in Linux
5. Shell programming: fundamentals
6. Shell programming: loops
7. Shell programming: functions
8. Linux processes and process scheduling
9. Multithreading
10. Inter-process communication (IPC)

## Read the book

Open [`main.pdf`](main.pdf) to read the current compiled manual.

## Build from source

The source is written in LaTeX. Install a LaTeX distribution such as TeX Live
with the packages used by the document, then run from the repository root:

```sh
pdflatex main.tex
```

This generates `main.pdf`. To remove auxiliary build files afterward, run:

```sh
latexmk -c
```

## Chapter 4 practice data

Chapter 4 includes practices that use a sample text-data archive. Download
[`chapter4-text-lab-data.zip`](Resources/chapter4-text-lab-data.zip), extract
it, and follow the included `README.txt` instructions. Keep the original sample
files unchanged while completing the exercises.

## Project layout

- `Chapters/` — LaTeX source for the ten chapters
- `Images/` and `Pictures/` — figures and book artwork
- `Resources/` — downloadable practice data
- `Settings/` — title page, copyright page, and table-of-contents source
- `main.tex` and `structure.tex` — document entry point and LaTeX layout

## Author and contact

Prepared by Reza Ahmadizadeh, Teaching Assistant and author. For questions or
feedback, contact [mr.ahmadizadeh28@gmail.com](mailto:mr.ahmadizadeh28@gmail.com).

## License

See [`LICENSE`](LICENSE) for the repository license.
