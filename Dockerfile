FROM python:3

COPY . /opt/words-count
RUN ln -sf /opt/words-count/words_count.py /usr/local/bin/words-count
