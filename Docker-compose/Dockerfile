# Image oluşturacagim
# docker image build -t devops_project .


# JDK Sürümü
FROM openjdk:17

# Bilgilendirme 
LABEL maintainer="alperenosman132@gmail.com"

# Cevresel Degiskenler
ENV APP_NAME="Devops Project"
ENV VERSION="v1.0.0"
ENV PORT ="4444"

# Echo Çıktı Almak
RUN echo "App Data Name : $APP_NAME"
RUN echo "App Data Version : $VERSION"
RUN echo "App Data Port : $PORT"

# Kalıcılık
VOLUME /tmp 

# PORT 
EXPOSE 1111 

# Proje Jar ismini kısaltmak
ARG JAR_FILE=./*.jar

ADD ${JAR_FILE} devops_project

ENTRYPOINT [ "java","-jar","/devops_project" ]


