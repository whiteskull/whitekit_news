class WhitecmsNewsCreateWhiteNews < ActiveRecord::Migration
  def change
    create_table :white_news do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
