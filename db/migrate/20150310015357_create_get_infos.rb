class CreateGetInfos < ActiveRecord::Migration
  def change
    create_table :get_infos do |t|
      t.column :title, :string
      t.column :url, :string
      t.column :content, :text, :limit => 4294967295
      t.column :statue, :string
      t.timestamps
    end
  end
end
