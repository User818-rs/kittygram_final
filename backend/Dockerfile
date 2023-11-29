FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
#Не совсем понял что в данном замечании нужно сделать. 
# COPY ./scripts/entrypoint.prod.sh /app/entrypoint.prod.sh
# # RUN ["chmod", "+x", "/app/entrypoint.prod.sh"]
# ENTRYPOINT ["python","/app/entrypoint.prod.sh"]

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]