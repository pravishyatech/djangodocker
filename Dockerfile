FROM python:3.9

ENV PYTHONUNBUFFERED=1

WORKDIR /home/ec2-user/code

COPY requirements.txt

RUN pip install requirements.txt -r

COPY . ./

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
