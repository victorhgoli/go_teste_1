# Imagem base
FROM golang:1.21.6 as builder

# Definir diretório de trabalho
WORKDIR /app

# Copiar o código fonte
COPY . .

# Compilar a aplicação
RUN CGO_ENABLED=0 GOOS=linux GOARCh=amd64 go build -o myapp


FROM scratch

COPY --from=builder /app/myapp /app/myapp

ENTRYPOINT [ "/myapp" ]