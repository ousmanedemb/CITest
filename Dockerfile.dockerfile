# Utiliser une image de base avec Python
FROM python:3.9

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY Scraper_app_expat.py /app

# Installer les dépendances Python
RUN pip install streamlit

# Exposer le port utilisé par Streamlit
EXPOSE 8501

# Commande pour exécuter l'application Streamlit
CMD ["streamlit", "run", "TP_GROUPE_7.py"]
