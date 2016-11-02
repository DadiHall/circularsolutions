ActiveAdmin.register EmsText do

permit_params :body


 index do
	
	column :body

 actions

 end

 form do |f|
	f.inputs do
	
		f.input :body, as: :ckeditor, input_html: { ckeditor: { toolbar: 'Full' } }
	end

	actions
 end


end
