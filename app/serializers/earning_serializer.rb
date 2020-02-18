class EarningSerializer < ActiveModel::Serializer
  attributes :id, :amount, :earning_category
  # attributes :id, :amount, :category_title


  def category_title
    EarningCategory.find_by(id: self.object.earning_category_id).title
  end
end
