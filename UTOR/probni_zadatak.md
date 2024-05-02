# Probni zadatak

> Komentar: Preporučene biblioteke su [pdfminer.six](https://pdfminersix.readthedocs.io) i [BeautifulSoup4](https://www.crummy.com/software/BeautifulSoup/bs4/doc/)

## Zadatak 1

> Ručno preuzmite pdf dokument "[Attention is all you need](https://arxiv.org/pdf/1706.03762)" te pomoću prikladnih alata (npr. [pdfminer.six](https://pdfminersix.readthedocs.io/en/latest/)) izlučite sve naslove/podnaslove uključujući naslov rada.

## Zadatak 2

> Izlučite sav tekstualni sadržaj istraživačkog rada (preuzetog dokumenta), isključujući matematičke formule te meta-podatke.

## Zadatak 3

> Izlučite sav tekstualni sadržaj iz pdf dokumenta. Izdvojite tekst pod naslovom "Abstract" i "References" u zasebne varijable.

## Zadatak 4

> Iz preuzetog dokumenta izlučite sve dostupne meta-podatke, npr. konferenciju na kojoj je rad objavljen, imena autora, datum posljednje izmjene te popis svih referenci u obliku liste.

## Zadatak 5

> Iz preuzetog dokumenta pokušajte rekonstruirati strukturu, pridružujući tekstualni sadržaj pojedinom naslovu, npr. pomoću [Python dictionary strukture](https://docs.python.org/3/tutorial/datastructures.html#dictionaries).

## Zadatak 6

> Napravite `DataFrame` objekt koji sadrži rezultate prethodnih zadataka ([4](#zadatak-4), [5](#zadatak-5)) te izvezite `DataFrame` objekt u 4 proizvoljna formata (npr. csv, pickle, json).

## Zadatak 7

> Ponovite postupak (zadatke [4](#zadatak-4), [5](#zadatak-5), [6](#zadatak-6)) za HTML verziju dokumenta dostupnu na [ar5iv](https://ar5iv.labs.arxiv.org) sjedištu, na linku: https://ar5iv.labs.arxiv.org/html/1706.03762

## Zadatak 8

> Usporedite rezultate izlučivanja iz PDF i HTML dokumenta. 
