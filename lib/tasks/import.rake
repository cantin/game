require 'csv'

namespace :import do
  desc "e.g. rake import:users users.csv"
  task :users => :environment do
    file = ARGV.last
    raise "No such file: #{file}" unless File.exist?(file)

    CSV.open(file, headers: true).each do |row|
      User.create! name: row[0], role: row[1]
    end
  end

  desc "e.g. rake import:users gifts.csv"
  task :gifts => :environment do
    file = ARGV.last
    raise "No such file: #{file}" unless File.exist?(file)

    CSV.open(file, headers: true).each do |row|
      a = { name: row[0], amount: row[1].to_i }
      a[:grade] = row[2] if row[2]
      Gift.create! a
    end
  end
end
