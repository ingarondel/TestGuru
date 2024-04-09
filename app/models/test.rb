class Test < ApplicationRecord

 belongs_to :category

  def self.sorted_test_names(category_name)
    joins(:category)
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
