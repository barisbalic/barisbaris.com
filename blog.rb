class Blog < Sinatra::Base
  set :views, 'views/blog'
  
  get '/?' do
    # Select by X, summarize and paginate
    haml :index
  end
  
  get '/:name/?' do
    # Load individual post
    haml :show
  end
  
  get '/tagged/:tag/?' do
    # Select by tag, summarize and paginate
    haml :index
  end
  
  # Pull out into another app?  Separate persistence?
  get '/:name/comments/?' do
  end
  
  get '/:name/comments/new/?' do
  end

  post '/:name/comments/?' do
    # create
  end

  get '/:name/comments/:id/edit/?' do
    # edit form
  end

  put '/:name/comments/:id/?' do
    # update
  end

  delete '/:name/comments/:id/?' do
    # destroy!
  end
  
end