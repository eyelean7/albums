
class Artist
  @@artists = []

  define_method(:initialize) do |name|
    @name = name
    @albums = []
    @id = @@artists.length().+(1)
  end
  define_method(:save) do
    @@artists.push(self.name())
  end
  define_method(:name) do
    @name
  end
  define_singleton_method(:clear) do
    @@artists = []
  end
  define_singleton_method(:all) do
    @@artists
  end
  define_method(:cd_artist) do |cd|
    @albums.push(cd)
  end
  define_method(:albums) do
    @albums
  end
  define_method(:id) do
    @id
  end
  define_singleton_method(:find) do |identification|
    found_artist = nil
    @@artists.each() do |artist|
      if Artist.id().eql?(identification.to_i())
        found_artist = artist
      end
    end
    found_artist
  end
end
