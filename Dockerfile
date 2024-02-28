# Utiliser une image de base avec Python
FROM python:3.9

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY TP_GROUPE_7.py /app
COPY 24049.jpg /app
COPY climatiseurs.csv /app
COPY cuisinieres.csv /app
COPY machine_laver.csv /app
COPY refrigerateurs.csv /app
COPY requirements.txt /app
# Installer les dépendances Python
RUN pip install -r requirements.txt   # Installer les dépendances à partir de requirements.txt

# Exposer le port utilisé par Streamlit
EXPOSE 8500

# Commande pour exécuter l'application Streamlit
CMD ["streamlit", "run", "TP_GROUPE_7.py"]
