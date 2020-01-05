# frozen_string_literal: true

ActiveAdmin.register Sentence do
  actions :index, :edit, :update

  config.sort_order = 'id_asc'

  permit_params :content

  index do
    selectable_column

    column :content

    actions
  end

  form do |f|
    f.semantic_errors(*f.object.errors.keys)

    f.inputs do
      f.input :content
    end

    f.actions
  end
end
