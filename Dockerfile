FROM debian

RUN apt-get update &&\
	apt-get install -y \
	bats \
	curl \
	figlet \
	git-core \
	mc \
	wget
