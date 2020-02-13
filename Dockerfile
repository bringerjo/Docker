FROM python:3
WORKDIR C:/Users/Dell/Desktop/Cours_Benj/microblog
ENV FLASK_APP microblog.py
ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt ~/requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD [ "python", "./microblog.py" ]

