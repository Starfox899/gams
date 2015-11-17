FROM ubuntu:15.04
MAINTAINER Sascha Herrmann <sascha.herrmann.consulting@gmail.com>

# Download appropriate version from gams.com
RUN wget -O /linux_x64_64_sfx.exe http://gamsfiles.gams.com.s3.amazonaws.com/distributions/24.2.3/linux/linux_x64_64_sfx.exe

# Prepare and extract GAMS archive
RUN chmod 755 linux_x64_64_sfx.exe
RUN mkdir -p /opt 
RUN (cd /opt; /linux_x64_64_sfx.exe)
RUN (cd /opt; ln -s gams24.5_linux_x64_64_sfx gams)

	
ENTRYPOINT bash	 
