ARG UPSTREAM=2.3.10
FROM analogic/poste.io:latest
RUN apt-get update && apt-get install less  # 'less' is Useful for debugging

# Default to listening only on IPs bound to the container hostname
ENV LISTEN_ON=4.158.97.185
ENV SEND_ON=

COPY files /
RUN /patches && rm /patches
