# UTOR – Uvod u teorijsko računarstvo

Course materials (Jupyter notebooks, example data and assignments).

## Setup

Requires [conda](https://docs.conda.io/en/latest/miniconda.html) (Miniconda is enough).

```shell
conda create -n utor_2026 python=3.10 pip -y
conda activate utor_2026
pip install -r requirements.txt
```

Register the environment as a Jupyter kernel and start Jupyter:

```shell
python -m ipykernel install --user --name utor_2026 --display-name "Python (utor)"
```

Open a notebook and select the **Python (utor)** kernel.

> `requirements.txt` is updated as the course progresses. If a notebook
> fails with `ModuleNotFoundError`, run `pip install -r requirements.txt` again.

## Course materials

The number prefix is the session (vježbe) in which the notebook is used.
`1_2_` means the material spans sessions 1 and 2.

| Prefix | Notebook | Topic |
|---|---|---|
| 1_2 | `1_2_prikupljanje_podataka.ipynb` | Web scraping (requests, regex, BeautifulSoup) |
| 1_2 | `1_2_prikupljanje_podataka_fiz.ipynb` | Same topic, alternate example (Fakultet za fiziku) |
| 3 | `3_uvod_u_pdfminer.ipynb` | PDF parsing with pdfminer.six |
| 4 | `4_rad_s_podacima.ipynb` | Tables with Camelot, pandas, data export |
| 5 | `5_probni_zadatak.md` | Practice assignment (extraction) |
| 6 | `6_tokenizacija.ipynb` | Tokenization (WordPiece) |
| 7 | `7_analitika_podataka.ipynb` | Data analysis and visualization |

Other files:

- `zadatak_prakticni_rad.md` – practical assignment (final project)
- `teme_prakticni_zadatak.md` – topics and data sources for the practical assignment
- `ENG/` – English translations, using the same prefixes