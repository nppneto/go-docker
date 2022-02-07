FROM golang:1.12.0-alpine

## Criando diretório /app
RUN mkdir /app

## Adicionando os arquivos do diretório atual para /app
ADD . /app

WORKDIR /app

## Buildando a aplicação
RUN go build -o main .

CMD [ "/app/main" ]