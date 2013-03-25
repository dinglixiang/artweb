#encoding: utf-8
ActiveAdmin.register AdminUser ,as: 'Account' do     
  before_filter { @skip_sidebar = true }

  menu label: "管理员账户"
  index :title => "管理员账户", :download_links => false do                            
    column "管理员邮箱",:email                     
    #column :current_sign_in_at        
    column "最近一次登录时间",:last_sign_in_at           
    #column :sign_in_count             
    default_actions                   
  end 

  # index :as => :grid, :download_links => false, :columns => 3 do |video|
  #   render video
  # end                                

  filter :email                       

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation  
    end                               
    f.actions                         
  end                                 
end                                   
