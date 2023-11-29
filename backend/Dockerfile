FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
#Не совсем понял что в данном замечании нужно сделать. 
COPY ./docker-entrypoint.sh /app/docker-entrypoint.sh
RUN ["chmod", "+x", "/app/docker-entrypoint.sh"]
ENTRYPOINT ["/app/docker-entrypoint.sh"]
# Про сбор статики при помощи скрипта тоже как то ни чего не понятно выходит но что то не то. 

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]