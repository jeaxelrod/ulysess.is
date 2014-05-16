Ulysess::App.controllers  do
  get "/" do
    @videos = Video.all
    @video = Video.first
    @title = @video.title
    @vimeo_video_id = @video.link[/\d+/]
    @picture = Padrino.root @video.picture.url
    @comments = @video.comments
    @comment = Comment.new
    @fb_url = "http://ulysses-videos.herokuapp.com/"
    @fb_title = "Interview with #{@title}"
    @fb_video = "http://vimeo.com/moogaloop.swf?clip_id=#{@vimeo_video_id}&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00ADEF&amp;fullscreen=1&amp;autoplay=0&amp;loop=0" 
    @fb_image = "http://i.vimeocdn.com/video/97507588_640.jpg"
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
    @fb_url = "http://ulysses-videos.herokuapp.com/"
    @fb_title = "Interview with #{@title}"
    @fb_video = "http://vimeo.com/moogaloop.swf?clip_id=#{@vimeo_video_id}&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00ADEF&amp;fullscreen=1&amp;autoplay=0&amp;loop=0" 
    @fb_image = "http://i.vimeocdn.com/video/97507588_640.jpg"
    render "layouts/index.erb"
  end
 
end