FROM adoptopenjdk:8-openj9-focal

RUN 	apt-get update && \
	apt-get -y install \
		apt-transport-https \
	    	ca-certificates \
	    	curl \
	    	gnupg-agent \
	    	software-properties-common && \
	curl -fsSL https://packages.atlassian.com/api/gpg/key/public | apt-key add - && \
	add-apt-repository "deb https://packages.atlassian.com/debian/atlassian-sdk-deb/ stable contrib" && \
	apt-get update && \
	apt-get -y install atlassian-plugin-sdk

EXPOSE 2990
