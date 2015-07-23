# controllers/artists.rb

# index
get '/artists' do
  @artists = Artist.all
  erb :"artists/index"
end

# show
get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb :"artists/show"
end

# new
get "/artists/new" do
  erb :"artists/new"
end

# create
post '/artists' do
  @artist = Artist.create(params[:artist])
  redirect "/artists/#{@artist.id}"
end

# edit
get "/artists/:id/edit" do
  @artist = Artist.find(params[:id])
  erb :"artists/edit"
end

# update

# destroy
