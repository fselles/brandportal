class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :contactperson
      t.string :title
      t.text :description
      t.string :article_number
      t.string :status

      t.timestamps
    end
  end
end
