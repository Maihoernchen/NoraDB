# Handling incoming querys
# Options: 
# 1. Use existing SQL Module to process SQL-Querys
# 2. Do the whole thing ourselves

# import possible tokens
require "json"

SRC = File.open("../rec/tokens.json") do |file|
    JSON.parse(file)
end

# get tokens from json
KEYS = SRC["keys"];
SPEC = SRC["specifications"];
AGGR = SRC["aggregates"];

# grab next token (faulty, fix next session)
def nextToken(cmd)
    endpoint = cmd.index(" ")
    p! typeof(endpoint.as(Int32))
    token = cmd[0, endpoint.as(Int32)]
    i = 0
    j = 0
    k = 0
    l = 0
    while i < 2
        while j < 15
            p! KEYS[j]
        end
        while k < 9

        end
        while l < 11

        end
    end
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

interpret("SELECT * FROM ente")