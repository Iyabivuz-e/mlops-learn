FROM python:3.13

WORKDIR /main

COPY . /main/

# Install uv inside the the docker container
RUN pip install uv
RUN uv sync

EXPOSE 5000

CMD ["python", "main.py"]