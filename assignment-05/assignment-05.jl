function parse_string(str_in)
    arr_out = Array{Tuple{String, Int}, 1}() # initializ an array of tuples
    str_len = length(str_in)
    first_idx = 0 # keep track of the first index of the words
    tuple_idx = 1
    for i = 1:str_len # loop over every symbol in string
        if (first_idx < 1) # first_idx is reset to 0 after we've found a space
            first_idx = i
        end
        if (str_in[i] == ' ')
            push!(arr_out, (string(str_in[first_idx:i]),first_idx))
            first_idx = 0
            tuple_idx = tuple_idx + 1
            continue
        elseif i == str_len
            push!(arr_out, (string(str_in[first_idx:(i)]),first_idx))
        end
    end
    return arr_out
end

function build(parsed_list)
    listlength = length(parsed_list)
    for i = 1:listlength
        parentnode = rootnode
        for c = 1:length(parsed_list[i][1])
            parentnode.children

            #println(parsed_list[i][1][c])
        end
    end
    #Ettersom parentNode.children er en Dict() kan du bare gjøre noe som det hær
    #if skalLeggeTilEnChildNode
    #  parentNode.children["enEllerAnnenBokstav"] = childNode
    #end

end