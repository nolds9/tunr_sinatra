# controllers/songs.rb

# index route (REST)
get "/songs" do
  @songs = Song.all
  erb :"songs/index"
end

# new route
get "/songs/new" do
  erb :"songs/new"
end

# show route
get "/songs/:id" do
  @song = Song.find(params[:id])
  erb :"songs/show"
end

# create route
post "/songs" do
  @song = Song.create(params[:song])
  redirect "/songs/#{@song.id}"
end

# edit
get "/songs/:id/edit" do
  @song = Song.find(params[:id])
  erb :"songs/edit"
end

# update
put '/songs/:id' do
  @song = Song.find(params[:id])
  @song.update(params[:song])
  redirect "/songs/#{@song.id}"
end

# destroy
delete '/songs/:id' do
  @song = Song.find(params[:id])
  @song.destroy
  redirect "/songs"
end
