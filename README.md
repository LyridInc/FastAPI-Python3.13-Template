# Lyrid Python 3.13 FastAPI Template

We follow this directory structure:
https://fastapi.tiangolo.com/deployment/docker/?#directory-structure

## Set virtual environment(optional):
```
python -m venv venv
source venv/bin/activate
```

## Run locally with:
```
pip install -r requirements.txt
fastapi dev app/main.py
```

Open http://localhost:8000

## Edit the names (optional):
Open .lyrid-definition and change the App and Module name, because this will override another applications with the same name in the platform.

## Then submit to Lyrid Platform:

```
lc code submit
```
Wait until the cloud platform to finish with the build and the default deployment.

## Start hacking:

Edit the routes and codes at /main folder with your custom API. 

Add more middlewares or your business logic in there.