class AddDefaultCategoriesToProductCategories < ActiveRecord::Migration[7.1]
  def change
    ProductCategory.create([{ name: 'Ring' }, { name: 'Necklace' }, { name: 'Earrings' }])
  end
end
