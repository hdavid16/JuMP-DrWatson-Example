∑ = sum

##
import Random:seed!
function add_customers(C,n)
    seed!(0)
    new_customers = n - nrow(C)
    vcat(
        C, 
        DataFrame(
            ID = nrow(C)+1:n,
            x_coord = rand(new_customers),
            y_coord = rand(new_customers),
            demand = rand(10:50, new_customers)
        )
    )
end

function add_facilities(F,n)
    seed!(0)
    new_facilities = n - nrow(C)
    vcat(
        F, 
        DataFrame(
            ID = nrow(F)+1:n,
            x_coord = rand(new_facilities),
            y_coord = rand(new_facilities),
            capacity = rand(100:150, new_facilities),
            fixed_cost = rand(new_facilities)
        )
    )   
end