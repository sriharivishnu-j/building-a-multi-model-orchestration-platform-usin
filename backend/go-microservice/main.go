package main

import (
    "fmt"
    "log"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "High-performance processing")
}

func main() {
    http.HandleFunc("/process", handler)
    log.Fatal(http.ListenAndServe(":8080", nil))
}