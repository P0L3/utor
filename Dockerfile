FROM python:3.8.0

WORKDIR /utor

COPY ./requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

RUN mkdir UTOR

CMD ["echo", "UTOR container ready!"]
