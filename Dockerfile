FROM ubuntu
RUN mkdir work
WORKDIR /work
COPY . work
RUN pip install -r requirements.txt
CMD [ "python", "./microblog.py" ]
