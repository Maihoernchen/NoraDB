# Handling incoming querys
# Options: 
# 1. Use existing SQL Module to process SQL-Querys
# 2. Do the whole thing ourselves

# import possible tokens

KEYS = ["SELECT","SELECT *","SELECT DISTINCT","SELECT INTO","SELECT TOP","CREATE","CREATE DATABASE","DROP","UPDATE","DELETE","ALTER TABLE","GRANT","REVOKE","SAVEPOINT","ROLLBACK","TRUNCATE"];
SPEC = ["WHERE","AND","OR","BETWEEN","LIKE","IN","IS NULL","IS NOT NULL","FROM"];
AGGR = ["COUNT","SUM","AVG","MIN","MAX","GROUP BY","HAVING","ORDER BY","DESC","OFFSET","FETCH"];

p! KEYS[5];
p! SPEC[2];
p! AGGR[3];


# grab next token (faulty, fix next session)
def nextToken(cmd,first)
    endpoint = cmd.index(" ")
    p! typeof(endpoint.as(Int32))
    token = cmd[0, endpoint.as(Int32)]
    i = 0
    j = 0
    k = 0
    l = 0
    nextt = ""
    if first==false
        while j < 16
            p! KEYS[j]
            j = j+1
        end
        while k < 9
            p! SPEC[k]
            k = k+1
        end
        while l < 11
            p! AGGR[l]
            l = l+1
        end
    else
        while j < 16
            p! KEYS[j]
            j = j+1
        end
    end
    if nextt.blank?
        return false,token
    else
        return true,token
    end
end

# removes last token
def eat

end

# interpret given command
def interpret(cmd)
    i = 0
    geht,token = nextToken(cmd,false)
    if !geht
        puts "Error with QL-Syntax. Unexpected token #{token}"
    end
end

interpret("SELECT * FROM ente")