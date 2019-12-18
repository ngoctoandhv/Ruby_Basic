#lấy keys và value của hash

#each {| key, value | block}
h.each {|key, value| puts "#{key} is #{value}"}

#each_key {| key | block}
h.each_key {|key| puts key}

#each_value {| value | block}
h.each_value {|value| puts value}
...