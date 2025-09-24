FROM python:3.13

WORKDIR /main

COPY . /main/

RUN uv sync

EXPOSE 5000

CMD ["python", "main.py"]