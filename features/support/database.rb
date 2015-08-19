

# ActiveRecord::Base.establish_connection(
#     adapter: 'sqlite3',
#     database: "D:/Users/sherahma/Documents/TimeSheet"
# )
#
# @sqlite3_connection = ActiveRecord::Base.connection
#
# products_table = @sqlite3_connection.execute("select * from products")
#
# puts products_table
#
#
# products_table.each do |row|
#   puts "id -- #{row['ID']}"
#   puts "category id -- #{row['CATEGORY_ID']}"
#   puts "Description -- #{row['DESCRIPTION']}"
# end