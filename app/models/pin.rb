class Pin < ApplicationRecord
  acts_as_votable
  belongs_to :user

  def self.search(search)
    where("commonname LIKE ? or species LIKE ?", "%#{search}%", "%#{search}%")
    #("species LIKE ?", "%#{search}%")
  end

  #def self.search(search)
  #  if search
  #    find(:all, :conditions => ['commonname LIKE ?', "%#{search}%"])
  #  else
  #    find([1,6])
  #  end
  #end

  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
