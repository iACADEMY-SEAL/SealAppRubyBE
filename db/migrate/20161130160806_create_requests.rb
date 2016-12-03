class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|

      
      t.string   :requester
      t.string   :subject
      t.text     :summary
      t.boolean  :isChecked
      t.string   :studentNumber
      t.string   :category

      t.timestamps
    end
  end
end
