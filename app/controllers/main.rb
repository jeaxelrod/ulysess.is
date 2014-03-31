Ulysess::App.controllers  do
  get "/" do
    @videos = Video.all
    @video = Video.first
    @title = @video.title
    render "layouts/index.erb"
  end
  
  get "/:video_id" do
    @video = Video.find(params[:video_id])
  end
end