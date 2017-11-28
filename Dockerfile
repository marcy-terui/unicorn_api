FROM amazonlinux
RUN yum install -y python27-pip && yum clean all
COPY . /app
RUN pip install -r /app/requirements.txt
WORKDIR /app
CMD ./start.sh
