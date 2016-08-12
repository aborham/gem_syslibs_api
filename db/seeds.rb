# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating Sample Packages ...'
p1 = Package.find_or_create_by!(name: "nokogiri")
p2 = Package.find_or_create_by!(name: "rmagick")
p1.versions.destroy_all
p2.versions.destroy_all
v1 = Version.new(number:"1.6.0", os: "Linux", libs: ["ruby-dev", "zlib1g-dev", "liblzma-dev"])
v2 = Version.new(number:"1.6.0", os: "Mac", libs: ["imagemagick"])
v3 = Version.new(number:"1.6.0", os: "Linux", libs: ["imagemagick", "libmagickwand-dev"])

p1.versions << v1
p2.versions << v2
p2.versions << v3
puts 'Done Seeding sample packages.'