
FROM java:8

MAINTAINER xwb

RUN /usr/local/docker/software/project/jenkins-demo

WORKDIR /usr/local/docker/software/project/jenkins-demo


ADD jenkins-demo-1.1.0.SNAPSHOT.jar jenkins-demo.jar

# 运行jar
RUN bash -c 'touch /jenkins-demo.jar' ENTRYPOINT ["java","-jar","/jenkins-demo.jar"]

EXPOSE 8881