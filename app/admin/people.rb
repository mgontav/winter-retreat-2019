# frozen_string_literal: true

ActiveAdmin.register Person do
  actions :index, :show, :edit, :update

  config.sort_order = 'name_asc'

  permit_params :name, :team_id

  index do
    selectable_column

    column :name
    column :team

    actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :team
    end
  end

  form do |f|
    f.semantic_errors(*f.object.errors.keys)

    f.inputs do
      f.input :name
      f.input :team
    end

    f.actions
  end
end
