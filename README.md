## Initial Setup

```bash
uv init
uv add --dev ipykernel notebook
uv add pyspark==4.0.1 delta-spark==4.0.0
uv run python -m ipykernel install --prefix=.venv --name=pyspark_venv --display-name "pyspark-delta (.venv)"
uv run --env-file=.env jupyter notebook
```

## Typical usage

```bash
uv run --env-file=.env jupyter notebook
```


## Usefuls

* Clean notebook for redistribution: [nbstripout](