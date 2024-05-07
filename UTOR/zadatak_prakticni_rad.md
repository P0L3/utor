# Praktični zadatak

Kolegij: **Uvod u teorijsko računarstvo**

Nositelj predmeta: Prof. dr. sc. Sanda Martinčić-Ipšić

Asistent: Andrija Poleksić, mag. inf.

## Opis zadatka

Nepristupačni formati poput PDF-a skrivaju velike količine korisnih podataka. Riječima autora [Camelot](https://camelot-py.readthedocs.io/en/master/) biblioteke: 
> "Sadly, a lot of today’s open data is trapped in PDF (tables)."

Želimo te podatke preoblikovati u format koji računala mogu automatski procesirati, pritom stvarajući dobit za pojedinu tvrtku, ustanovu ili nas same. 
> Primjer: [Dohvaćanjem potpomognuta generacija](https://learn.deeplearning.ai/courses/preprocessing-unstructured-data-for-llm-applications/lesson/1/introduction) (eng. *Retrieval-augmented generation*)

U ovom zadatku potrebno je:
1. Odabrati izvor "nepristupačnih" podataka. 

> (*default:* PDF dokumenti (radovi) pojedinog časopisa iz domene klimatskih promjena.)

> Popis će biti dostupan na Merlinu.

2. Osmisliti shemu podataka koju ćete izlučivati. (Kompleksnost se boduje!)

> Jednostavna shema na primjeru radova iz časopisa:

| Ime stupca | Opis |
| --- | --- |
| Naslov | STRING - Naslov znanstvenog rada: `"Matching the Blanks: Distributional Similarity for Relation Learning"` |
| DOI | STRING - Jedinstveni identifikator rada: `"10.3390/app112110442"` |
| Datum | DATE/STRING - Datum objave/dorade/publikacije rada: `2023-07-18` |
| Sadržaj | STRING - Tekstualni sadržaj samog rada: `"Pojam umjetne inteligencije prvi spominje John McCarthy 1956. prilikom održavanja prve znanstvene konferencije [1] na temu inteligentnih računala. Iako ... "` |

> Malo složenija shema podataka na primjeru radova iz časopisa:

| Ime stupca | Opis |
| --- | --- |
| Naslov | STRING - Naslov znanstvenog rada: `"Matching the Blanks: Distributional Similarity for Relation Learning"` |
| DOI | STRING - Jedinstveni identifikator rada: `"10.3390/app112110442"` |
| Datum | DATE/STRING - Datum objave/dorade/publikacije rada: `2023-07-18` |
| **Autori** | STRING LIST - Lista autora pojedinog rada: `["Jacob Devlin", "Ming-Wei Chang", "Kenton Lee", "Kristina Toutanova"]` |
| **Sažetak** | STRING - Tekstualni sadržaj sažetka (abstract): `"U ovome radu opisana je primjena i prednosti korištenja paralelizma (paralelnog programiranja) kod rada sa dubokim neuralnim mrežama, nadalje DNN. ..."` |
| Sadržaj | STRING - Tekstualni sadržaj samog rada: `"Pojam umjetne inteligencije prvi spominje John McCarthy 1956. prilikom održavanja prve znanstvene konferencije [1] na temu inteligentnih računala. Iako ... "` |

3. Automatski izlučiti podatke s proizvoljnim open-source alatom/bibliotekom.

4. Izlučene podatke spremiti u json i csv formatu te dva proizvoljno izabrana formata (npr. parquet, xml).

5. Uz kod napisati pripadnu dokumentaciju:
	- Informacije o izvoru podataka
	- Korišteni alati/biblioteke
	- Struktura spremljenih podataka
	- Bilješke o izlučivanju podataka (npr. *U nekim radovima nije bilo moguće izlučiti podnaslove jer se ne razlikuju od ostatka teksta.*)

6. Predati:
	- Kod s pripadnom dokumentacijom, preporuka je Python notebook (.ipynb)
	- Dokumentacija (5.)
	- Rezultati izlučivanja - .csv, .json, ... datoteke

> Komentari:
>> Ideja je tekst očuvati što konzistentnijim.
>> Česti problemi sa ekstrakcijom:

| Problem Description                                            | Example/Explanation                                                                                                                                                                                 |
|----------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Text data missing due to unexpected font size/style            | Where $2$ and $two$ always makes up five.<br />**Where and always makes up five.** <br /> ... original BERT<sub>BASE</sub> model with  ... <br /> **... original BERT model with ...** |
| Wrong ordering of paragraphs                                   | Layout algorithm heuristics give wrong conclusions based on distance, e.g. bottom right paragraph is "closer" to top right paragraph then to the top left paragraph due to a figure/table/graph.    |
| Page numbering or similar information abrupt paragraph content | For navigation through HTML files, we used BeautifulSoup library. <br /> **For navigation through HTML files, we PAGE 5 AUTHOR ET AL. used BeautifulSoup library.**                          |
| Wrong word ordering due to justification                       | Nature  &nbsp; &nbsp; &nbsp;  climate <br /> change <br /> **Nature change climate**                                                                                                               |
| Problems with wrong symbol extraction (Ligatures)              | ... far-reaching effects on global ecosystems ... <br /> **... far-reaching eﬀects on global ecosystems ...**                                                                                |
| First line of paragraph missing                                |                                                                                                                                                                                                     |

