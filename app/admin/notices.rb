ActiveAdmin.register Notice do
	index do
		column :title
		column :filenumber
		column :created_at
		# column "标题", :title
		# column "文档编号", :filenumber
		# column "创建时间", :created_at

		default_actions
	end

end
