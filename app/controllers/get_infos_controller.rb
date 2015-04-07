class GetInfosController < BasesController

	def index
		params.permit!
		if request.post?
	    conn = GetInfo.get_conn(params) 
	    @infos = GetInfo.where(conn).order("id desc").page(params[:page])
	  else
	    @infos = GetInfo.order("id desc").page(params[:page])
    end
	end

  def update
    params.permit!
    @info = GetInfo.find_by_id(params[:id])
    @info.save
  end	

end
