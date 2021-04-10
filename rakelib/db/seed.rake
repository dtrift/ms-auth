namespace :db do
  desc 'Add Seed'
  task seed: :settings do
    require 'sequel'
    require 'sequel/extensions/seed'
    require_relative '../../config/environment'
    Sequel.extension :seed
    Sequel::Seed.setup :development

    DB = Sequel.connect(Settings.db.to_h)

    Sequel::Seeder.apply(DB, File.expand_path('../../db/seeds', __dir__))
    puts DB.inspect
  end
end
