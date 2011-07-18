class Admin < Sinatra::Base
  set :views, 'views/admin'
  
  get '/admin/?' do
    haml :index
  end
  
  get '/admin/entries/?' do
    # Load posts
    haml :'entries/index'
  end

  get '/admin/entries/new/?' do
    haml :'entries/new'
  end

  get '/admin/entries/:id/edit?' do
    # Load post and provide to view
    haml :'entries/edit'
  end
  
  put '/admin/entries/:id/?' do
    # Apply changes
    redirect_to '/admin/entries/'
  end
  
  post '/admin/entries/?' do
    # Create post
    # Save
    redirect_to '/admin/entries/'
  end

  delete '/admin/entries/:id/?' do
    # Apply changes
    redirect_to '/admin/entries/'
  end
  
end