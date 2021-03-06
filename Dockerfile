FROM python:2.7

WORKDIR /app

RUN   pip install requests
RUN   pip install baker

COPY services.py /app/gaucho
RUN  chmod +x /app/gaucho

ENTRYPOINT ["/app/gaucho"]
