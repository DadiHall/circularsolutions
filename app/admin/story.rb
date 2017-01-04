ActiveAdmin.register Story, as: "Our Story" do

permit_params :title, :body, :image


 index do
	column :title
	column :body

 actions

 end

 form do |f|
	f.inputs do
		f.input :title
		f.input :body, as: :ckeditor, input_html: { ckeditor: { toolbar: 'Full' } }
	end

	actions
 end


end
