# Imagem base
FROM golang:1.21.6

# Definir diretório de trabalho
WORKDIR /app

# Copiar o código fonte
COPY . .

# Compilar a aplicação
RUN CGO_ENABLED=0 GOOS=linux GOARCh=amd64 go build -o myapp

ENTRYPOINT [ "/app/myapp" ]