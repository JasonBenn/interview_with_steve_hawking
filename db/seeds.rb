categories = <<-CATEGORIES
Behavioral
Technical
CATEGORIES

subcategories = <<-SUBCATEGORIES
Arrays and Strings
Linked Lists
Stacks and Queues
Trees and Graphs
Bit Manipulation
Brain Teasers
Object Oriented Design
Recursion
Sorting and Searching
Mathematical
Testing
Databases
Performance
SUBCATEGORIES

category_seed = categories.each_line.to_a
subcategory_seed = subcategories.each_line.to_a

category_seed.each do |c|
  category = Category.create(
    name: c.strip
  )
end

subcategory_seed.each do |s|
  subcategory = Subcategory.create(
    name: s.strip,
    category_id: 2
  )
end


