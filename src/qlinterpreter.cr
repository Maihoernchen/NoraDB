# Handling incoming querys
# Options: 
# 1. Use existing SQL Module to process SQL-Querys
# 2. Do the whole thing ourselves

# import possible tokens
require "json"

json = File.open("./tokens.json") do |file|
    JSON.parse(file)
end

# get tokens from json
keys= json["keys"];
spec = json["specifications"];
aggr = json["aggregates"];

# test
p! json["keys"]["SELECT"];


# grab next token (faulty, fix next session)
def nextToken(cmd)
    i = 0
    stop = cmd.index(" ")
    while cmd < stop-1
        counter += 1
        puts "Counter: #{counter}"
    end
    # re
end

# removes last token
def eat

end

# interpret given command
def interpret(cmd)
    i = 0
    nextToken = nextToken(cmd)
    if !nextToken
        puts "Error with QL-Syntax. Unexpected token #{nextToken}"
    end
end
