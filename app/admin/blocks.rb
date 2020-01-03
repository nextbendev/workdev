ActiveAdmin.register Block do



  permit_params :title, :body, :position, :display, :show_title, :class_suffix, :is_published
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :position, :display, :show_title, :class_suffix, :is_published]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs "Details" do
      f.input :title, :label => "Title"
      f.input :show_title, :label => "Show Title"
      f.input :body, :label => "Body"
      f.input :position, :label => "Position", :as => :select, :collections => [["Jumbotron", "jumbotron"], ["Block", "block"]]
      f.input :display, :label => "Display", :as => :select, :collections => [["All pages", "all"], ["Homepage Only", "home"], ["All But Homepage", "nohome"]]
      f.input :order, :label => "Order"
      f.input :class_suffix, :label => "Class Sufix"
      f.input :is_published, :label => "Published"
      f.actions
    end


end
end
