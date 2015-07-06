def createHierarchy(n)
    hierarchy = []

    n.each{|pair, index|
        evaluated = pair.split(" ")
        hierarchy.push([evaluated[0], evaluated[1]])
    }

    hierarchy;
end

def readHierachy(total, hierarchy)
    names = [];

    names[0] = hierarchy[0][0];

    p total
    p names[0]

    aux_names = []
    hierarchy.each{|pair|
        names.each{|_name|
            aux_array = hierarchy.map{|x|
                x[0] === _name ? x[1] : nil
            }
            aux_array = aux_array.select{|x|
                x != nil
            }

            aux_names = aux_names.concat aux_array
        }

        if aux_names.length > 0
            p aux_names.join(' ')
            names = aux_names
            aux_names = []
        end
    }
end

def getHierarchy(n)

    total = n[0]
    hierarchy = []

    n.shift
    hierarchy = createHierarchy(n);

    readHierachy(total, hierarchy);

end


getHierarchy([6, "Jonh Mark", "Jonh Lee", "Mark Paul", "Lee Steve", "Lee Leo", "Leo Lana", "Steve Carl", "Paul Barbara", "Paul Dan", "Barbara Rodrigo"])