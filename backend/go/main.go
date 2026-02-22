package main

import (
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/ingest", func(w http.ResponseWriter, r *http.Request) {
		if r.Method != http.MethodPost {
			http.Error(w, "Invalid request method", http.StatusMethodNotAllowed)
			return
		}
		log.Println("Data ingested successfully")
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("Data ingested successfully"))
	})

	log.Fatal(http.ListenAndServe(":8080", nil))
}