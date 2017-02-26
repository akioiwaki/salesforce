ActiveAdmin.register Hoge do
    permit_params :name, :age
    menu parent: "大メニュー", label: "Hoge", priority:3
    
#     active_admin_importable do |model, hash|
#       model.create(name: hash[:name], age: hash[:age])
#   end

    config.sort_order = "name_asc"
    actions :all, :except => [:destroy]
    
    index do
        column :id
        column :name
        column "年齢", :age
        column :created_at
        column :updated_at
        actions
    end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
