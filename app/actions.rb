# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages/new' do
  @messages = Message.all
  erb :'messages/new'
end

post '/messages' do
  @message = Message.new(
    title: params[:title],
    content: params[:content],
    author: params[:author]
  )
  @message.save
  redirect '/messages'
end
