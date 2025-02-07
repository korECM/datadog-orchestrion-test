FROM golang:1.23.6-alpine3.21 AS builder

# Set workdir
WORKDIR /app

# Install go packages
COPY go.mod go.sum ./

RUN go install github.com/DataDog/orchestrion

RUN go mod download

COPY cmd/app ./cmd/app

RUN CGO_ENABLED=0 orchestrion go build -o test_app ./cmd/app
