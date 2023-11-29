FROM python:3.9

WORKDIR /app

COPY requirements.txt .

COPY ./scripts/entrypoint.prod.sh /app/entrypoint.prod.sh
RUN ["chmod", "+x", "/app/entrypoint.prod.sh"]
ENTRYPOINT ["docker-entrypoint.prod.sh"]

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]