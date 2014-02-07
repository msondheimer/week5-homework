class ComicsController < ApplicationController

def index
	@comics = Comic.all
end

def show
    # Route pattern: /movies/:movie_id
    # Actual url: /movies/1
    # What was in the :movie_id placeholder position?
	the_comic_id = params["id"]

    @comic = Comic.find_by :id => the_comic_id

    render 'show'
 end

 def new

 end

 def create
    c = Movie.new
    c.title = params["title"]
    c.description = params["description"]
    c.image_url = params["image_url"]
    c.save
    redirect_to "/comics"
 end



end
