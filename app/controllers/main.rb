Ulysess::App.controllers  do
  get "/" do
    @videos = Video.all
    @video = Video.first
    @title = @video.title
    @vimeo_video_id = @video.link[/\d+/]
    @comments = @video.comments
    @comment = Comment.new
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
    render "layouts/index.erb"
  end
  

end