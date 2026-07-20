FROM alpine

RUN apk add --no-cache curl jq
COPY ./app/config/config.json /app/config/config.json
COPY ./app/data/postdata.json /app/data/postdata.json

CMD ["sh", "-c", "for i in $(jq -r .webhook.discord[] /app/config/config.json); do curl -s -X POST -H 'Content-Type: Application/json' -d @/app/data/postdata.json \"${i}\" | jq; done"]
