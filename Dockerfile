FROM debian

LABEL "de.andrelademann"="André Lademann" \
	version="0.0.4" \
	description="Docker debian image to use for development, testing and deployment."

RUN apt-get update &&\
		apt-get install -y \
		bash \
		bash-completion \
		bats \
		bzip2 \
		ca-certificates \
		curl \
		figlet \
		findutils \
		git \
		make \
		mc \
		siege \
		wget \
		vim \
		zip
