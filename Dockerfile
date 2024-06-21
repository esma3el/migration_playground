FROM python:3-alpine3.19 as base

WORKDIR /app
COPY . .
RUN pip install -r req.txt
EXPOSE 8000
RUN chmod +x docker-entrypoint.sh

# ENTRYPOINT ["/bin/sh", "docker-entrypoint.sh" ]
CMD [ "python","manage.py runserver 0.0.0.0:8000" ]