FROM gradle:5.6.2-jdk17
WORKDIR /install4j
RUN apt-get update && \
    apt-get install -y wget xvfb && \
    wget --no-verbose https://download-gcdn.ej-technologies.com/install4j/install4j_unix_9_0_5.tar.gz && \
    tar -zxf install4j_unix_9_0_5.tar.gz && \
    wget --no-verbose -P $HOME/.install4j8/jres "https://download.ej-technologies.com/bundles/java9/windows-amd64-11.0.3.tar.gz" && \
    wget --no-verbose -P $HOME/.install4j8/jres "https://download.ej-technologies.com/bundles/java9/macosx-amd64-11.0.3.tar.gz" && \
    wget --no-verbose -P $HOME/.install4j8/jres "https://otter-build-nightly.s3.amazonaws.com/linux-amd64-11.0.4.tar.gz"
ENV ORG_GRADLE_PROJECT_gradlewInstall4jDirectory=/install4j/install4j9.0.5
WORKDIR /repo
