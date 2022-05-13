FROM golang:alpine as builder

WORKDIR /app
COPY . .


RUN go build 

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/hello-go .
CMD ["./hello-go"]
