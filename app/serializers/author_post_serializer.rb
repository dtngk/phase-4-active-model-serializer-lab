class AuthorPostSerializer < ActiveModel::Serializer
  attributes :short_content,:title
  has_many :tags
  belongs_to :author
  
  def short_content
    "#{self.object.content[0..39]...}"
  end
end
