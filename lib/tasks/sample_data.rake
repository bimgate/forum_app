namespace :db do
desc "Fill database with sample data"
task populate: :environment do

admin = User.create!(name: "bimgate",
email: "bimgate@railstutorial.org",
password: "zicakv12",
password_confirmation: "zicakv12")
admin.toggle!(:admin)

end
end