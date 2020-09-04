FROM python:3.7.6

EXPOSE 8050
RUN apt-get update && \
    apt-get install -y build-essential && \
    mkdir -p /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY ./ /app

WORKDIR /app/event_sequence
ENV PYTHONPATH=/app/
#HEALTHCHECK CMD curl --fail http://localhost:8050/health || exit 1
#ENTRYPOINT python3.7 /app/
#entrypoint sleep 99999
