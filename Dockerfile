FROM adoptopenjdk:11-jdk-openj9
WORKDIR /install4j
RUN apt-get update && \
    apt-get install -y wget && \
    wget --no-verbose https://download-gcdn.ej-technologies.com/install4j/install4j_unix_8_0_4.tar.gz && \
    tar -zxf install4j_unix_8_0_4.tar.gz && \
    wget --no-verbose -P $HOME/.install4j8/jres "https://download.ej-technologies.com/bundles/java9/windows-amd64-11.0.3.tar.gz" && \
    wget --no-verbose -P $HOME/.install4j8/jres "https://download.ej-technologies.com/bundles/java9/macosx-amd64-11.0.3.tar.gz" && \
    wget --no-verbose -P $HOME/.install4j8/jres "https://otter-build-nightly.s3.amazonaws.com/linux-amd64-11.0.4.tar.gz"
ENV INSTALL4JDIR=/install4j/install4j8.0.4
