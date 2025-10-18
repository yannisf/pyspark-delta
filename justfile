# justfile for project setup and convenience tasks
set shell := ["bash", "-cu"]

setup:
	@echo "Running project initial setup with uv..."
	@uv init
	@uv add --dev ipykernel notebook ipython-sql sparksql-magic psycopg2-binary "prettytable<3.9"
	@uv add pyspark==4.0.1 delta-spark==4.0.0
	@uv run python -m ipykernel install --prefix=.venv --name=pyspark_venv --display-name "pyspark-delta (.venv)"
	@echo "Setup complete. Use 'just jupyter' to start the notebook."

jupyter:
	@uv run --env-file=.env jupyter notebook

clean-notebook:
	@jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace delta-example-simple.ipynb
