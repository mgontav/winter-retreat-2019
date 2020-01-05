# frozen_string_literal: true

ActiveAdmin.register Team do
  actions :index, :show, :edit, :update

  config.sort_order = 'id_asc'

  permit_params :name, :score, :creature, :founder,
                :score, :color1, :color2, values: []

  filter :name_contains, label: 'NAME'

  index do
    selectable_column

    column :name
    column :creature
    column :score

    actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :creature
      row :avatar do |r|
        if r.avatar.attached?
          image_tag url_for(r.avatar), class: 'active_admin_image'
        end
      end
      row :founder
      row :values
      row :score
      row :color1
      row :color2
    end
  end

  form do |f|
    f.semantic_errors(*f.object.errors.keys)

    f.inputs do
      f.input :name
      f.input :creature
      f.input :founder
      f.input :values, as: :array
      f.input :color1
      f.input :color2
      f.input :score
    end

    f.actions
  end
end
