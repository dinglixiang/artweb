#encoding: utf-8
ActiveAdmin.register Notice do

	menu :label =>"通知公告"
	index :title => "通知公告" do
		 column "标题", :title
		 column "文档编号", :filenumber
		 column "创建时间", :created_at

		default_actions
		
	end

	filter :title, :label => "标题"
	filter :created_at, :label => "创建时间"

	controller do
		def create
			 @notice = Notice.new(params[:notice])

			 if @notice.save
			 	redirect_to admin_notices_path
			 end
		end

		
	end

end
