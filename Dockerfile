FROM golang:1.19.2-bullseye

WORKDIR /app

# Effectively tracks changes within your go.mod file
COPY go.mod .

RUN go mod download

# Copies your source code into the app directory
COPY main.go .

RUN go mod -o /snippetbox

EXPOSE 8080

CMD [ “/snippetbox” ]