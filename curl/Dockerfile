FROM alpine as base
LABEL MANTAINER="Rodrigo Turatti"
LABEL VERSION="1.0.0"
LABEL DESCRIPTION="Curl API Globo"
WORKDIR /app
COPY comments.sh /app
RUN chmod +x /app/comments.sh && apk add --no-cache curl
ENTRYPOINT [ "sh", "/app/comments.sh" ]