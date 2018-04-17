json.extract! cat_libri, :id, :nome, :descrizione, :created_at, :updated_at
json.url cat_libri_url(cat_libri, format: :json)
