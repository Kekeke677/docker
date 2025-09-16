# Simple single-stage Dockerfile for Go tracker project
FROM golang:1.23
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o tracker .
COPY tracker.db .
CMD ["./tracker"]
