# Handling incoming querys
# Options: 
# 1. Use existing SQL Module to process SQL-Querys
# 2. Do the whole thing ourselves

# import extensions

require "../meth/*"

KEYS = ["SELECT","SELECT *","SELECT DISTINCT","SELECT INTO","SELECT TOP","CREATE","CREATE DATABASE","DROP","UPDATE","DELETE","ALTER TABLE","GRANT","REVOKE","SAVEPOINT","ROLLBACK","TRUNCATE"];
SPEC = ["WHERE","AND","OR","BETWEEN","LIKE","IN","IS NULL","IS NOT NULL","FROM"];
AGGR = ["COUNT","SUM","AVG","MIN","MAX","GROUP BY","HAVING","ORDER BY","DESC","OFFSET","FETCH"];

p! KEYS[5];
p! SPEC[2];
p! AGGR[3];


# grab next token (faulty, fix next session)
def nextToken(cmd,first)
    # define counting indexes and empty nextt[oken]
    i = 0
    j = 0
    k = 0
    l = 0
    nextt = ""
    # loop through 
    if first==false
        while j < 16
            if cmd==KEYS[j]
                nextt = KEYS[j]
            end
            j = j+1
        end
        while k < 9
            if cmd==SPEC[k]
                nextt = SPEC[k]
            end
            k = k+1
        end
        while l < 11
            if cmd==AGGR[l]
                nextt = AGGR[l]
            end
            l = l+1
        end
    else
        while j < 16
            if cmd==KEYS[j]
                nextt = KEYS[j]
            end
            j = j+1
        end
    end
    if nextt.blank?
        return false,cmd
    else
        return true,cmd
    end
end

# removes last token
def eat

end

# interpret given command
def interpret(cmd)
    i = 0
    cmd = cmd.split
    while i < cmd.size
        geht,token = nextToken(cmd[i],false)
        if !geht
            puts "Error with QL-Syntax. Unexpected token #{token}"
        else 
            next_token = token
        end
        p! next_token
        i=i+1
    end
end

interpret("SelEct * FROM ente")