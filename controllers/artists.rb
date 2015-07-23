# controllers/artists.rb

# index route (REST)
get "/artists" do
  @artists = Artist.all
  erb :"artists/index"
end

# new route
get "/artists/new" do
  erb :"artists/new"
end

# show route
get "/artists/:id" do
  @artist = Artist.find(params[:id])
  erb :"artists/show"
end

# create route
post "/artists" do
  @artist = Artist.create(params[:artist])
  redirect "/artists/#{@artist.id}"
end

# edit
get "/artists/:id/edit" do
  @artist = Artist.find(params[:id])
  erb :"artists/edit"
end

# update
put '/artists/:id' do
  @artist = Artist.find(params[:id])
  @artist.update(params[:artist])
  redirect "/artists/#{@artist.id}"
end

# destroy
delete '/artists/:id' do
  @artist = Artist.find(params[:id])
  @artist.destroy
  redirect "/artists"
end
