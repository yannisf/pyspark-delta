# justfile for project setup and convenience tasks
set shell := ["bash", "-cu"]

install-uv:
	@python - <<'PY'
import importlib, sys, subprocess
if importlib.util.find_spec("uv") is None:
    print("uv not found — installing via pip (user)...")
    subprocess.check_call([sys.executable, "-m", "pip", "install", "--user", "uv"])
else:
    print("uv already installed")
PY

setup: install-uv
	@echo "Running project initial setup with uv..."
	@python -m uv init
	@python -m uv add --dev ipykernel notebook ipython-sql sparksql-magic
	@python -m uv add pyspark==4.0.1 delta-spark==4.0.0
	@python -m uv run python -m ipykernel install --prefix=.venv --name=pyspark_venv --display-name "pyspark-delta (.venv)"
	@echo "Setup complete. Use 'just jupyter' to start the notebook."

jupyter:
	@python -m uv run --env-file=.env jupyter notebook

clean-notebook:
	@jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace delta-example.ipynb
