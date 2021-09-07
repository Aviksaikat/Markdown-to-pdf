# Markdown to PDF Export Using Pandoc

> Saikat Karmakar | Sept : 2021

---

## Usage
```bash
git clone https://github.com/Aviksaikat/Markdown-to-pdf.git
cd Markdown-to-pdf
chmod +x markdown-to-pdf.sh 
./markdown-to-pdf.sh <input.md> <output.md>
```

https://user-images.githubusercontent.com/31238298/132361733-fc78f81a-901e-4648-9d1a-3da5234ad432.mp4


### Requirements

- Pandoc
- LaTeX (eg. TeX Live) in order to get pdflatex or xelatex
- Eisvogel Pandoc LaTeX PDF Template(inside the templates folder)

Installation on common distros:
- Kali/Debian/Ubuntu: apt install texlive-latex-recommended texlive-fonts-extra texlive-latex-extra pandoc 
- ArchLinux: pacman -S texlive-most pandoc
- openSUSE: zypper in texlive-scheme-medium pandoc
