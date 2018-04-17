json.extract! libri, :id, :titolo, :prezzo, :autore, :descrizione, :cat, :created_at, :updated_at
json.url libri_url(libri, format: :json)
