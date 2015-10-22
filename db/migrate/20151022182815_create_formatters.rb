class CreateFormatters < ActiveRecord::Migration
  def change
    create_table :formatters do |t|
      t.string :content
      t.boolean :numbered
      t.string :style
    end
  end
end
