FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
#Не совсем понял что в данном замечании нужно сделать. 
COPY ./scripts/entrypoint.prod.sh /app/entrypoint.prod.sh
<<<<<<< HEAD
# RUN ["chmod", "+x", "/app/entrypoint.prod.sh"]
ENTRYPOINT ["python","/app/entrypoint.prod.sh"]
=======
RUN ["chmod", "+x", "/app/entrypoint.prod.sh"]
#ENTRYPOINT ["docker-entrypoint.prod.sh"]
>>>>>>> 045dacf0fe9b1dc18f3c6c4606d604f616ccb2ba

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]
