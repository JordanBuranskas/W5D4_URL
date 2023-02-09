class CreateShortenedUrl < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.text :long_url, null: false, unique: true, index: true
      t.string :short_url, null: false, unique: true, index: true
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
