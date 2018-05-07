class LibriSerializer < ActiveModel::Serializer
  attributes :id, :titolo, :prezzo, :autore, :descrizione, :cat, :order
end
