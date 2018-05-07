class CorsiSerializer < ActiveModel::Serializer
  attributes :id, :data, :luogo, :titolo, :contatto, :descrizione, :visibilit
end
