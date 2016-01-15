class Post < ActiveRecord::Base  
  validates :image, presence: true

  has_attached_file :image, styles: { :medium => "640x" },
  									:storage => :s3, :s3_credentials => S3_CREDENTIALS
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end 

