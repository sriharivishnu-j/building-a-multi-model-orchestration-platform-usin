package main

import (
	"fmt"
	"net/http"
)

func dataAggregation(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Data aggregation processed")
}

func main() {
	http.HandleFunc("/aggregate", dataAggregation)
	http.ListenAndServe(":8080", nil)
}