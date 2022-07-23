package main

import (
	"log"
	"net/http"

	"github.com/felixge/fgprof"
	isuports "github.com/isucon/isucon12-qualify/webapp/go"
)

func main() {
	http.DefaultServeMux.Handle("/debug/fgprof", fgprof.Handler())
	go func() {
		log.Print(http.ListenAndServe(":6060", nil))
	}()

	isuports.Run()
}
