a = []

100.times {|i| a << (i + 1)}
 p a

 a2 = []
 a.each do |i|
    a2 << 100 * i
 end

 p a2

 a2 = a.collect { |i| 100 * i }
 p a2

 a3 = a.reject{|i| i % 3 != 0}
 p a3

 a3 = a.reject!{|i| i % 3 != 0}
 p a3
 p a

 a = a.sort do |a, b|
    -(a <=> b)
 end
 p a

 sum = 0
 a.each do |i|
     sum += i
 end
 p sum

ary = (1..100).to_a
result = Array.new
10.times do |i|
    result << ary[10*i, 10]
end
p result

def sum_array(nums1, nums2)
    ret = []
    i = 0
    nums1.each do |num|
        ret << num + nums2[i]
        i += 1
    end
    ret
end
p sum_array([1,2,3], [4,5,6])


def sum_array_with_zip(nums1, nums2)
    ret = Array.new
    nums1.zip(nums2) { |a, b| ret << a + b}
    ret
end
p sum_array_with_zip([1,2,3], [4,5,6])
