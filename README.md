# ⚙️ LivePublication CWL Workflows

This repository provides Common Workflow Language (CWL) wrappers and workflows that orchestrate the **LivePublication Data Producer**, enabling reproducible geospatial data pipelines for scientific publishing.

These CWL tools connect to the [livepublication-data-producer](https://github.com/GusEllerm/livepublication-data-producer) Python library, which automates Sentinel-2 satellite data acquisition, NDVI analysis, and orbit metadata capture with full provenance.

---

## 📦 Requirements

To use these workflows:

- Python 3.12+
- [`livepublication-data-producer`](https://github.com/GusEllerm/livepublication-data-producer) installed via:

  ```bash
  pip install git+https://github.com/GusEllerm/livepublication-data-producer.git
  ```
- CWL runner (e.g. [`cwltool`](https://github.com/common-workflow-language/cwltool))

  ```bash
  pip install cwltool
  ```

---

## 🛠️ Setup

Create a virtual environment and install dependencies:

```bash
python -m venv .venv
source .venv/bin/activate
pip install pip-tools
pip-compile requirements.in
pip install -r requirements.txt
```

---

## 🚀 Usage

Once CWL wrappers are available in this repo, you’ll be able to run workflows like:

```bash
cwltool workflows/get_data.cwl profiles/canterbury_profile.yml
```

> 💡 Profiles define the area-of-interest, date ranges, cloud filters, and where outputs are written.

---

## 📂 Repository Layout

```
.
├── workflows/              # CWL workflow definitions
├── steps/                  # CWL CommandLineTool wrappers
├── profiles/               # Example profiles used as workflow inputs
├── utils/                  # Helper scripts for dynamic inputs or post-processing
├── tests/		    # Unit tests
├── requirements.in         # Pip dependencies for compilation
├── requirements.txt
└── README.md
```

---

## 📖 License

MIT — use, share, and cite freely.
Part of the LivePublication Framework for open, dynamic scientific publishing.
