import camelot

tables = camelot.read_pdf("DATASETS/Glossary.pdf", pages="4")
print(tables[0])