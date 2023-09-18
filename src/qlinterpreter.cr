# Handling incoming querys
# Options: 
# 1. Use existing SQL Module to process SQL-Querys
# 2. Do the whole thing ourselves

# import possible commands
require "json"

json = File.open("./tokens.json") do |file|
    JSON.parse(file)
end

p! json["SELECT"];