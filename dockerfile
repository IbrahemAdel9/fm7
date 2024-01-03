FROM python:3.12
RUN pip3 install fastapi
RUN pip3 install uvicorn
RUN pip3 install flusk
RUN mkdir -p /app
WORKDIR /app
COPY ./main.py /app/
CMD ["uvicorn", "main:app","--host", "0.0.0.0", "--port", "8000", "--reload"]
##The host is 0.0.0.0 to allow calls from outside the container
