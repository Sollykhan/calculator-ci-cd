# 1. Utilisation d'une image l‚gŠre de Python
FROM python:3.10-slim

# 2. D‚finition du dossier de travail dans le conteneur
WORKDIR /app

# 3. Copie de ton code dans le conteneur
COPY calculator/ /app/calculator/

# 4. Commande par d‚faut (juste pour garder le conteneur actif ou lancer un test)
CMD ["python", "calculator/calculator.py"]
