FROM alpine:latest
RUN apk update && apk add --no-cache curl bash jq
RUN bash <(curl -Ls https://githubusercontent.com)
ENV PORT=10000
EXPOSE 10000
CMD ["/usr/local/x-ui/x-ui"]
