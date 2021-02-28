FROM python:3

COPY . /opt/words-count
WORKDIR /opt/words-count
RUN pip install pytest
