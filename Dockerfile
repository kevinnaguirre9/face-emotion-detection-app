FROM python:3.10.5

WORKDIR /var/www/app

COPY . .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 8080

CMD streamlit run --server.port 8080 app.py