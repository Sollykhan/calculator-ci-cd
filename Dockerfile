# 1. Utilisation d'une image l�g�re de Python
FROM python:3.10-slim

RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
    build-essential \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# 2. D�finition du dossier de travail dans le conteneur
WORKDIR /app

# 3. Copie de ton code dans le conteneur
COPY calculator/ /app/calculator/
COPY tests/ /app/tests/

# 4. Commande par d�faut (juste pour garder le conteneur actif ou lancer un test)
CMD ["python", "calculator/calculator.py"]
