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
    @fb_video = "http://vimeo.com/moogaloop.swf?clip_id=16034713&amp;force_embed=1&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00adef&amp;fullscreen=1&amp;autoplay=0&amp;loop=0" 
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
    @fb_url = "http://ulysses-videos.herokuapp.com/#{params[:id]}"
    @fb_title = "Interview with #{@title}"
    @fb_video = @video.link
    render "layouts/index.erb"
  end
  
  <!-- This version of the embed code is no longer supported. Learn more: https://vimeo.com/s/tnm --> <object width="800" height="450"><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=16034713&amp;force_embed=1&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00adef&amp;fullscreen=1&amp;autoplay=0&amp;loop=0" /><embed src=
  "http://vimeo.com/moogaloop.swf?clip_id=16034713&amp;force_embed=1&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00adef&amp;fullscreen=1&amp;autoplay=0&amp;loop=0" 
  type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="800" height="450"></embed></object> <p><a href="http://vimeo.com/16034713">Interview with Naval Ravikant of VentureHacks</a> from <a href="http://vimeo.com/pointabout">PointAbout, Inc.</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

end