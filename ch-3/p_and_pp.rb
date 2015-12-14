require "pp"
# http://stackoverflow.com/questions/8014090/odd-number-list-for-hash
# trying to use 1.9 hash syntax (key: value) with a 1.8 Ruby (:key => value).
# v = [{key0: "aa", key01: "bb", key02: "cc"}]
v = [{:key0 => "aa", :key01 => "bb", :key02 => "cc"}]

p v
pp v
