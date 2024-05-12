# Use a lightweight Node.js base image based on Alpine Linux
FROM node:lts-alpine3.19 AS builder

# Install necessary tools and packages
RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    bash \
    figlet \
    shadow \
    util-linux \
    coreutils && \
    rm -rf /var/cache/apk/*

# Copy custom profile and necessary scripts
COPY custom/profile.sh /etc/profile
COPY bin/* /root/
COPY package.json .

RUN npm install

FROM node:lts-alpine3.19

COPY --from=builder /etc/profile /etc/profile
COPY --from=builder /root/* /root/

# Create a non-privileged group and user to run the application
RUN addgroup -g 1010 app && \
    adduser -D -G app -g app -s /bin/ash app -h /docs

# Expose necessary ports for the application
EXPOSE 3000/tcp
EXPOSE 35729/tcp

# Set working directory and copy necessary scripts
WORKDIR /docs

# Run startup script when container starts
CMD ["/bin/bash", "/root/startup.sh"]