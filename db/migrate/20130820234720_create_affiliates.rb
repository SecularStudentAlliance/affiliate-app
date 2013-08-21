class CreateAffiliates < ActiveRecord::Migration
  def change
    create_table :affiliates do |t|
      t.string :name
      t.string :subtitle
      t.string :twitter
      t.string :facebook
      t.date :joined_on

      t.timestamps
    end
  end
end
