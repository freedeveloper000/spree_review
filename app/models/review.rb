class Review < ActiveRecord::Base
  belongs_to :product

  validates_presence_of :title, :review
  validates_numericality_of :rating, :only_integer => true

  scope :approved, :approved => '1'
  scope :not_approved, :approved => 'f' 

  scope :approval_filter, lambda {|*args| {:conditions => ["(? = '1') || (approved = '1')", Spree::Reviews::Config[:include_unapproved_reviews]]}} 

  scope :oldest_first, :order => "created_at asc"
  scope :preview,      :limit => Spree::Reviews::Config[:preview_size], :order=>"created_at desc"

end
