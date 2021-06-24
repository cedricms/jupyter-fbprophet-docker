# Dockerfile for working with Jupyter notebooks 
FROM python:3.8-slim-buster
WORKDIR /home/notebooks      # This is different from usual
RUN pip install numpy==1.19.4 \
                pandas==1.1.5 \
                scikit-learn==0.23.2 \
                tensorflow==2.4.0 \
                seaborn==0.11.0 \ 
                jupyter \ 
                notebook     
COPY . .
EXPOSE 8888
ENTRYPOINT ["jupyter", "notebook","--ip=0.0.0.0","--allow-root", "--no-browser"]