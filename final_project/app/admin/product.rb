ActiveAdmin.register Product do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :list, :of, :attributes, :on, :model, :name, :qty_on_hand, :price, :category_id, :attachment
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :price
      f.input :qty_on_hand
      f.input :category_id
      f.input :attachment, label: 'Current Filename (read only)' , as: :string, input_html: { readonly: true }
      f.input :attachment
      f.input :remove_attachment, label: 'Remove product image?', as: :boolean, input_html: { checked: false }
    end
  end

end
