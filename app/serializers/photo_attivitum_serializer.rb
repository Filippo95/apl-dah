class PhotoAttivitumSerializer < ActiveModel::Serializer
  attributes :image_url, :id

   def image_url
     object.image.url
    
   end 
   def id
        object.id
   end
end
