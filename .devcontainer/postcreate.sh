#!/bin/bash

npm install -g @devcontainers/cli

go install github.com/swaggo/swag/cmd/swag@v1.16.3

go get -u google.golang.org/protobuf/cmd/protoc-gen-go
go install google.golang.org/protobuf/cmd/protoc-gen-go

go get -u google.golang.org/grpc/cmd/protoc-gen-go-grpc
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc

go mod tidy

echo 'alias daytona="go run cmd/daytona/main.go"' >> "$HOME/.zshrc"