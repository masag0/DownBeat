json.artist do
  json.partial! 'artist', artist: @artist
end

json.albums do
  @artist.albums.each do |album|
    json.set! album.id do
      json.partial! 'api/albums/album', album: album
    end
  end
end