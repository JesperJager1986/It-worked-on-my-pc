FROM python:3.10

# Upgrade pip to the latest version
RUN pip install --upgrade pip

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir numpy

RUN pip install -r requirements.txt




COPY . .
CMD ["python", "app.py"]
