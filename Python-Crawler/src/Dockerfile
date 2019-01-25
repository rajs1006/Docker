FROM python:2

WORKDIR /usr/src/

COPY /app/* /usr/src/app/
COPY runPython.sh /usr/src/
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "/usr/src/runPython.sh"]
