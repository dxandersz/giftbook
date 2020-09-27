class AddDescriptionToGiftboxes < ActiveRecord::Migration[6.0]
  def change
    add_column :giftboxes, :description, :string
  end
end
