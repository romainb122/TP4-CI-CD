FROM python:3.11-slim

WORKDIR /app

# Copier le code
COPY src ./src
COPY tests ./tests

# CMD : exécuter les tests au lancement du conteneur
CMD ["python", "-m", "unittest", "discover", "-s", "tests", "-p", "test_*.py", "-v"]
