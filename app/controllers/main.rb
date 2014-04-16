Ulysess::App.controllers  do
  get "/" do
    @videos = Video.all
    @video = Video.first
    @title = @video.title
    @vimeo_video_id = @video.link[/\d+/]
    @comments = @video.comments
    @comment = Comment.new
    @fb_url = "http://ulysses-videos.herokuapp.com/"
    @fb_title = "Interview with #{@title}"
    @fb_video ="http://vimeo.com/api/oembed.json?url=http%3A%2F%2Fvimeo.com%2F16034713"
    render "layouts/index.erb"
  end
  
  get "/play" do
    render "layouts/play.erb"
  end
  
  get "/:id" do
    @video = Video.find(params[:id])
    @videos = Video.all
    @title = @video.title
    @vimeo_video_id = @video.link[/\d+/]
    @comments = @video.comments
    @comment = Comment.new
    @fb_url = "http://ulysses-videos.herokuapp.com/#{params[:id]}"
    @fb_title = "Interview with #{@title}"
    @fb_video = @video.link
    render "layouts/index.erb"
  end
  

end