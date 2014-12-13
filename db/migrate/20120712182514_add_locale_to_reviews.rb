class AddLocaleToReviews < ActiveRecord::Migration
  def self.up
    add_column :spree_reviews, :locale, :string, default: 'en'
  end

  def self.down
    remove_column :spree_reviews, :locale
  end
end
