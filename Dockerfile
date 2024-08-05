FROM apache/airflow:2.9.3

COPY new_requirements.txt .
# RUN sudo apt-get update  
# RUN sudo apt-get install build-essential
RUN /usr/local/bin/python -m pip install --upgrade pip  -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install -r new_requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
COPY ./dags dags
COPY ./plugins plugins
COPY ./airflow_docker.cfg airflow.cfg