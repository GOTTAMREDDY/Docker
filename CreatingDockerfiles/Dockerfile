# ---------- 1. Base image ----------
FROM python:3.10-slim

# ---------- 2. Metadata ----------
LABEL app="sample-python-app"

# ---------- 3. Build-time argument (default) ----------
ARG APP_PORT=5000

# ---------- 4. Runtime environment variable ----------
ENV APP_PORT=${APP_PORT}
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# ---------- 5. Working directory ----------
WORKDIR /app

# ---------- 6. Copy dependency file first (layer caching) ----------
COPY requirements.txt .

# ---------- 7. Install dependencies at build time ----------
RUN pip install --no-cache-dir -r requirements.txt

# ---------- 8. Copy application code ----------
COPY . .

# ---------- 9. Document exposed port ----------
EXPOSE 5000

# ---------- 10. ONBUILD (for learning only) ----------
ONBUILD RUN echo "ONBUILD runs in child image build"

# ---------- 11. Container startup command ----------
CMD ["python", "app.py"]
