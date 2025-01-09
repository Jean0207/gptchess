# Utiliser une image de base avec Jupyter
FROM jupyter/base-notebook:latest
FROM python:3.9-slim


# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier notebook dans le conteneur
COPY requirements.txt /tmp/requirements.txt
COPY . /app/


# Installer les dépendances Python si nécessaire
RUN pip install --no-cache-dir --requirement /tmp/requirements.txt
# Installer Jupyter Notebook et les dépendances nécessaires
RUN pip install --no-cache-dir jupyter notebook pandas numpy matplotlib chess stockfish


# Exposer le port Jupyter
EXPOSE 8888

# Lancer Jupyter Notebook au démarrage
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
