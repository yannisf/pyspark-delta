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

Alternatively, open VS Code. You should have installed the Jupyter plugin (ms-toolsai.jupyter). Open the notebook from the VS Code Explorer, and select as kernel "Existing Jupyter server". Copy there the url of your server which you can find in your terminal. It should look like `http://localhost:8888/tree?token=03bd18521c9100f4b1fb980c84ce1ed8664a1a281dee36c2`.

## Usefuls

* Clean notebook for redistribution

```bash
jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace delta-example.ipynb
```

## Download dataset

The dataset used can be downloaded from Kaggle: https://www.kaggle.com/datasets/jkraak/lego-sets-and-themes-database?resource=download