class ReviewsConfiguration < Configuration
  # include non-approved reviews in (public) listings 
  preference :include_unapproved_reviews, :boolean, :default => false

  # control how many reviews are shown in summaries etc.
  preference :preview_size, :integer, :default => 3
  
  # show a reviewer's email address
  preference :show_email, :boolean, :default => false
  
  # show helpfullness rating form elements
  preference :rate_helpfulness, :boolean, :default => false
end
