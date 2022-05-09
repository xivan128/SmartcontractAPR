FROM python:3.8

RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/

EXPOSE 5000

ENTRYPOINT [ "python", "main.py" ]