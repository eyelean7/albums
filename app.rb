require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/artist')
require('./lib/cd')
require('pry')

get('/') do
  erb(:index)
end

get('/cd_form') do
  erb(:cd_form)
end

post('/success')do
  @name = params.fetch('cd')

  @artist = params.fetch('artist')
  CD.new(@name).save()
  # cd.save()
  Artist.new(@artist).save()
  # artist.save()
  # @cd = CD.all()
  erb(:success)
end
post('/artists/:id') do
  @artists = Artist.find(params.fetch('id').to_i())
  erb(:artist)
end
get('/cds/:id') do
  @cd = cd.find(params.fetch('id').to_i())
  erb(:cd)
end
get('/artists/:id/cd/new') do
    @artist = Artist.find(params.fetch('id').to_i())
    erb(:artists_form)
end
get('/artists/new') do
   erb(:Artists_form)
end
get('/artists') do
  @Artists = Artist.all()
  erb(:Artists)
end
get('/artist')do
@artists= Artist.all()
  erb(:artist)
end
get('/cds') do
  @cds = cd.all()
  erb(:cds)
end

post('/cds') do

  @cd = CD.new(params.fetch('name'))
  @cd.save()
  @Artist = Artist.find(params.fetch('Artist_id').to_i())
  @Artist.add_cd(@cd)
  erb(:success)
end


# get('/artist/new') do
#
# end
