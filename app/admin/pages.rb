ActiveAdmin.register Page do
  permit_params :title, :section_id, :body, :order, :is_published, :menu_display
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :section_id, :body, :order, :is_published, :menu_display]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

index do
  column :id
  column :title, :sortable => :title
  column :section, :sortable => :section
  column :created_at, :sortable => :created_at
  column :order
actions

end

  form do |f|
    f.inputs "Details" do
      f.input :title, :label => "Title"
      f.input :section, :label => "Section"
      f.input :body, :class => 'ckeditor', :label => "wzzy"
      f.input :body, :label => "Body"
      f.input :order, :label => "Order"
      f.input :is_published, :label => "Published"
      f.input :menu_display, :label => "Display in Menu"
      f.actions
    end
  end



end
