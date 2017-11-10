FROM debian

LABEL "de.andrelademann"="André Lademann" \
	version="0.0.4" \
	description="Docker debian image to use for development, testing and deployment."

COPY setup/ /

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
		fontconfig \
		git \
		make \
		mc \
		python-pip \
		siege \
		wget \
		vim \
		zip

ENV	POWERLINE_BASH_CONTINUATION=1 \
		POWERLINE_BASH_SELECT=1

RUN pip install git+git://github.com/Lokaltog/powerline &&\
		wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf &&\
		wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf &&\
		mkdir -p /usr/share/fonts &&\
		mv PowerlineSymbols.otf /usr/share/fonts/ &&\
		mv 10-powerline-symbols.conf /etc/fonts/conf.d/ &&\
		fc-cache -vf /usr/share/fonts/ &&\
		echo '. /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh' >> ~/.bashrc
