Ulysess::App.controllers :comments do
  
  post :create do
    @comment = Comment.new(params[:comment])
    if @comment.save
      flash[:notice] = "Comment created"
      redirect to "/#{@comment.video_id}"
    else
      @video = Video.find(@comment.video_id)
      @videos = Video.all
      @title = @video.title
      @vimeo_video_id = @video.link[/\d+/]
      @comments = @video.comments
     render "layouts/index.erb"
    end
  end

end
