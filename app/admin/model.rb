ActiveAdmin.register Model do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	permit_params :name, :desc, :name, :phone, :image,
    city_ids: [], language_ids:[], contact_ids: [], model_ids: []


	form html: { multipart: true } do |f|
    f.inputs "Información Bizcocho" do
        f.input :name
        #falta buscar como poner más imagenes, si con un modelos para HABTM o OTM.
        f.input :image , :required => false, :as => :file, :hint => file_field_tag(f.object.image.url(:medium))
        f.input :citys, :as => :check_boxes, :collection => City.pluck(:name, :id)
        f.input :languages, :as => :check_boxes, :collection => Language.pluck(:name, :id)
        f.input :contacts, :as => :check_boxes, :collection => Contact.pluck(:phone, :id)
        f.input :desc
      end
      f.actions
  end




  show do |f|
      attributes_table do
        row :name
        row :image do
          image_tag(f.image.url(:medium))
        end
        row :details
      end
  end

	index do 
	  column "Titulo", :name
	  column "Creada", :created_at
	  column "Actualizada", :updated_at
	  column "Nombre del Archivo", :image_file_name
	  column "Tipo de Imagen", :image_content_type
	  column "Tamaño", :image_file_size do |size|
	  	number_to_human_size(size.image_file_size, precision: 2, separator: ',')
    end
  actions name: "Acciones"
    
  end

  
  menu label: "Bizcochos"

end
