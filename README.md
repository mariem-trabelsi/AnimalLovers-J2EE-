# 📦 Projet Fine-Tuning SSD MobileNet

## 📋 Description

Ce projet implémente un système de **fine-tuning pour SSD (Single Shot MultiBox Detector) avec MobileNet** comme backbone. L'architecture est structurée de manière modulaire pour faciliter l'entraînement, l'inférence et l'évaluation du modèle de détection d'objets.

Le projet contient trois catégories principales de composants : **les données** (dossiers `data`, `videos` pour les datasets et médias de test), **les modèles** (dossier `models` stockant les poids pré-entraînés et fine-tunés), et **les résultats** (dossier `results` pour les sorties d'inférence).

Les scripts Python suivent un workflow logique : `separateimages.py` pour le prétraitement des données, `train_ssd.py` et `train_ssd_mb2.py` pour l'entraînement avec différentes versions de MobileNet (v1 et v2), et `inference1.py`/`inference2.py` avec `result.py`/`result2.py` pour effectuer des prédictions et analyser les performances.

---

## 📂 Structure du Projet

```
📦 Projet-SSD-MobileNet/
│
├── 📁 data/                    # Données d'entraînement et validation
│
├── 📁 models/                  # Modèles pré-entraînés et fine-tunés
│
├── 📁 __pycache__/            # Fichiers Python compilés
│
├── 📁 results/                 # Résultats d'inférence et métriques
│
├── 📁 venv-39/                 # Environnement virtuel Python 3.9
│
├── 📁 videos/                  # Vidéos de test pour l'inférence
│
├── 📁 vision/                  # Modules d'implémentation SSD/MobileNet
│
├── 📄 commands.txt             # Commandes d'exécution documentées
│
├── 🐍 inference1.py            # Script d'inférence version 1
│
├── 🐍 inference2.py            # Script d'inférence version 2
│
├── 🐍 result.py                # Analyse des résultats version 1
│
├── 🐍 result2.py               # Analyse des résultats version 2
│
├── 🐍 separateimages.py        # Prétraitement et séparation des images
│
├── 🐍 train_ssd.py             # Entraînement SSD MobileNet v1
│
└── 🐍 train_ssd_mb2.py         # Entraînement SSD MobileNet v2
```

---

## 🚀 Installation

### Prérequis
- Python 3.9
- CUDA (optionnel, pour l'accélération GPU)

### Configuration de l'environnement

```bash
# Créer l'environnement virtuel
python3.9 -m venv venv-39

# Activer l'environnement
# Sur Linux/Mac:
source venv-39/bin/activate
# Sur Windows:
venv-39\Scripts\activate

# Installer les dépendances
pip install -r requirements.txt
```

---

## 📖 Usage

### 1. Prétraitement des données
```bash
python separateimages.py
```

### 2. Entraînement du modèle

**SSD MobileNet v1:**
```bash
python train_ssd.py
```

**SSD MobileNet v2:**
```bash
python train_ssd_mb2.py
```

### 3. Inférence

**Version 1:**
```bash
python inference1.py
```

**Version 2:**
```bash
python inference2.py
```

### 4. Analyse des résultats

```bash
python result.py
# ou
python result2.py
```

---

## 📊 Composants Principaux

### Dossiers de Données
- **`data/`** : Contient les images et annotations pour l'entraînement
- **`people/`** : Dataset spécialisé pour la détection de personnes
- **`videos/`** : Vidéos de test pour validation du modèle

### Dossiers de Sortie
- **`models/`** : Stockage des checkpoints et modèles entraînés
- **`results/`** : Résultats d'inférence, métriques et visualisations

### Scripts d'Entraînement
- **`train_ssd.py`** : Pipeline d'entraînement pour SSD avec MobileNet v1
- **`train_ssd_mb2.py`** : Pipeline d'entraînement pour SSD avec MobileNet v2

### Scripts d'Inférence
- **`inference1.py`** : Détection sur images/vidéos (version 1)
- **`inference2.py`** : Détection sur images/vidéos (version 2)
- **`result.py`** : Évaluation et métriques (version 1)
- **`result2.py`** : Évaluation et métriques (version 2)

---

## 🛠️ Technologies Utilisées

- **PyTorch** : Framework deep learning
- **SSD (Single Shot MultiBox Detector)** : Architecture de détection d'objets
- **MobileNet** : Backbone léger et efficace
- **OpenCV** : Traitement d'images et vidéos
- **Python 3.9** : Langage de programmation

---

## 📝 Notes

- Consultez `commands.txt` pour les commandes fréquemment utilisées
- Le dossier `vision/` contient les modules personnalisés pour l'implémentation SSD
- Deux versions de scripts d'inférence et de résultats permettent de comparer différentes approches

---

## 📄 Licence

[À définir]

---

## 👥 Contributeurs

[À définir]
