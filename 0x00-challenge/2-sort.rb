###
#
#  Sort integer arguments (ascending) 
#
###

result = []

ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # find the right position to insert
    i = 0
    while i < result.size && result[i] < i_arg do
        i += 1
    end
    
    # insert at the correct position
    result.insert(i, i_arg)
end

puts result
