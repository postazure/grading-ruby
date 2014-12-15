require_relative "./determine_diff"
require "json"

file = File.read('../data/grades.json')
data_hash = JSON.parse(file)
