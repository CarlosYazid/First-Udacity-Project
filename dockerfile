FROM python
RUN mkdir /project-udacity
WORKDIR /project-udacity
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD [ "sh", "./data/run_models_batch.sh" ]
