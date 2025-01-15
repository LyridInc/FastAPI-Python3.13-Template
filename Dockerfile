# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.13 as build-python

# Copy local code to the container image.
WORKDIR /code
COPY . .

RUN pip install -r requirements.txt

FROM python:3.13-slim

WORKDIR /code

COPY ./app /code/app

COPY --from=build-python /usr/local/lib/python3.13/site-packages/ /usr/local/lib/python3.13/site-packages/
COPY --from=build-python /usr/local/bin/ /usr/local/bin/

EXPOSE 8000

CMD ["fastapi", "run", "app/main.py", "--proxy-headers", "--port", "8000", "--workers", "4"]