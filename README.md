## Initial Setup

```bash
uv init
uv add jupyterlab ipykernel pyspark==4.0.1 delta-spark==4.0.0
uv run python -m ipykernel install --user --name=pyspark-delta --display-name "Python (pyspark-delta)"
uv run jupyter lab
```

## After checking out the repo

```bash
uv sync
uv run python -m ipykernel install --user --name=pyspark-delta --display-name "Python (pyspark-delta)"
uv run jupyter lab
```

## Typical usage

```bash
uv run jupyter lab
```
