FROM ubuntu:18.04

MAINTAINER github.com/rodrigo-brito

ENV PATH="/etc/natron:${PATH}"

RUN apt update && \
	apt install -y wget libglu1 \
		libgl1-mesa-glx \
		libxrender1 \
		libfontconfig1 \
		libsm6 \
		xz-utils \
	&& rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/NatronGitHub/Natron/releases/download/v2.3.15-rc12/Natron-RB-2.3-201912250211-84c2adc-64-no-installer.tar.xz \
	&& tar -xJf Natron-RB-2.3-201912250211-84c2adc-64-no-installer.tar.xz \
	&& mv Natron-RB-2.3-201912250211-84c2adc-64-no-installer /etc/natron \
	&& rm -rf Natron-RB-2.3-201912250211-84c2adc-64-no-installer.tar.xz

CMD ["/etc/natron/bin/NatronRenderer"]