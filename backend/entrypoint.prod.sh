#!/bin/bash
# python manage.py migrate
# python manage.py collectstatic
# cp -r /app/collected_static/. /backend_static/static/

sudo docker compose -f docker-compose.production.yml exec backend python manage.py migrate
sudo docker compose -f docker-compose.production.yml exec backend python manage.py collectstatic
sudo docker compose -f docker-compose.production.yml exec backend cp -r /app/collected_static/. /backend_static/static/