class CreateShortUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :short_urls do |t|
      t.string :original_url, null: false, index: { unique: true }
      t.string :token, null: false, index: { unique: true }
      t.integer :clicks, default: 0

      t.timestamps
    end
  end
end
