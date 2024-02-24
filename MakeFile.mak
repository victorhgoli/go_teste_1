# Nome do binário de saída
BINARY_NAME=tme-go-teste

# Comando para construir o binário
build:
    go build -o $(BINARY_NAME) main.go

# Comando para executar o binário
run: build
    ./$(BINARY_NAME)

# Comando para limpar os arquivos de compilação
clean:
    go clean
    rm $(BINARY_NAME)