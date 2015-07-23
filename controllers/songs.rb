# controllers/songs.rb

# index
get '/songs' do
  @songs = Song.all
  erb :"songs/index"
end

# new
get "/songs/new" do
  erb :"songs/new"
end

# show
get '/songs/:id' do
  @song = Song.find(params[:id])
  erb :"songs/show"
end

# create
# post '/songs' do
#   @song = Song.create(title: params[:title], album: params[:album], preview_url: params[:preview_url])
#   redirect "/songs/#{@song.id}"
# end

# edit
get "/songs/:id/edit" do
  @song = Song.find(params[:id])
  erb :"songs/edit"
end

# update
put '/songs/:id' do
  @song = Song.find(params[:id])
  redirect "/songs/#{@song.id}"
end
# destroy
delete '/songs/:id' do
  @song = Song.find(params[:id])
  redirect "/songs/"
end
