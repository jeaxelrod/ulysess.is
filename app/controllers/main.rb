Ulysess::App.controllers  do
  get "/" do
    @videos = Video.all
    @video = Video.first
    @title = @video.title
    @vimeo_video_id = @video.link[/\d+/]
    @comments = @video.comments
    @comment = Comment.new
    @fb_url = "http://ulysses.it"
    @fb_title = "Interview with #{@title}"
    @fb_video = @video.link
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
    @fb_url = "http://ulysses.it/#{params[:id]}"
    @fb_title = "Interview with #{@title}"
    @fb_video = @video.link
    render "layouts/index.erb"
  end
  

end