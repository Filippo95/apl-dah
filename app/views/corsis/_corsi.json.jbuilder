json.extract! corsi, :id, :data, :luogo, :titolo, :contatto, :descrizione, :visibilit, :created_at, :updated_at
json.url corsi_url(corsi, format: :json)
