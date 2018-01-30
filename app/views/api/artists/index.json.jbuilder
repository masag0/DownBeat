@artists.each do |artist|
  json.set! artist.id do
    json.(artist, :id, :name, :genre, :description, :img_url)
  end
end