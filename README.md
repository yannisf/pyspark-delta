## Initial Setup

```bash
uv init
uv add --dev ipykernel notebook ipython-sql sparksql-magic
uv add pyspark==4.0.1 delta-spark==4.0.0
uv run python -m ipykernel install --prefix=.venv --name=pyspark_venv --display-name "pyspark-delta (.venv)"
uv run --env-file=.env jupyter notebook
```

## Typical usage

```bash
uv run --env-file=.env jupyter notebook
```

## Usefuls

* Clean notebook for redistribution

```bash
jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace delta-example.ipynb
```
