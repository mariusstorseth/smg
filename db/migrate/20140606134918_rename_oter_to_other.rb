class RenameOterToOther < ActiveRecord::Migration
  def change
    rename_column :pipelines, :oter_margin, :other_margin
  end
end
