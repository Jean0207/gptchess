# Étape 1 : Utiliser une image de base
FROM python:3.9-slim

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers nécessaires dans le conteneur
COPY requirements.txt /tmp/requirements.txt
COPY . /app/

# Étape 4 : Installer les dépendances
RUN pip install --no-cache-dir --requirement /tmp/requirements.txt

RUN pip install jupyter


# Étape 5 : Définir la commande par défaut (si nécessaire)
CMD ["bash"]

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=9999", "--no-browser", "--allow-root"]

