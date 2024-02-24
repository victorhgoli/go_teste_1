package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.Default()

	r.GET("/teste", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"mensagem": "Olá, mundo!",
		})
	})

	r.GET("/healthcheck", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"status": "UP",
		})
	})

	r.Run() // por padrão escuta na porta 8080
}
