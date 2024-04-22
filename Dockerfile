FROM public.ecr.aws/docker/library/python:3.11.4-slim-bullseye

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /app

WORKDIR /app

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install -r requirements.txt

RUN /opt/venv/bin/pip install pip --upgrade && \
  /opt/venv/bin/pip install -r requirements.txt && \
  chmod +x /app/entrypoint.sh

CMD [ "/app/entrypoint.sh" ]