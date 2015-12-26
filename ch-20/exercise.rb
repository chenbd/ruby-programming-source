# encoding: utf-8
def cparsedate(str)
    now = Time.now
    year = now.year
    month = now.month
    day = now.day
    hour = now.hour
    minute = now.min
    second = now.sec
    str.scan(/(上午|下午)?(\d+)(|年|月|日|时|分|秒)/) do
        case $3
        when "年"
            year = $2.to_i
        when "月"
            month = $2.to_i
        when "日"
            day = $2.to_i
        when "时"
            hour = $2.to_i
            hour += 12 if $1 == "下午"
        when "分"
            minute = $2.to_i
        when "秒"
            second = $2.to_i
        end
    end
    return Time.mktime(year, month, day, hour, minute, second)
end

p cparsedate("2010年12月23日下午8时12分50秒")
p cparsedate("12月23日下午8时12分50秒")
p cparsedate("下午8时12分50秒")
p cparsedate("8时12分50秒")


def ls_t(path)
    entries = Dir.entries(path)
    entries.reject! {|name| /^\./ =~ name}
    mtimes = Hash.new
    entries = entries.sort_by do |name|
        mtimes[name] = File.mtime(File.join(path,name))
    end
    entries.each do |name|
        printf("%-40s %s\n", name, mtimes[name])
    end
rescue => ex
    puts ex.message
end

ls_t(ARGV[0] || "." )


require "date"
module Calendar
WEEK_TABLE = [
    [99, 99, 99, 99, 99, 99, 1, 2, 3, 4, 5, 6, 7],
    [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
    [9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21],
    [16, 17, 18, 19, 20, 21, 22, 23, 24,25,26, 27, 28],
    [23, 24, 25, 26, 27, 28, 29, 30, 31, 99, 99, 99, 99],
    [30, 31, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99,99],
]
module_function
def cal(year, month)
    first = Date.new(year, month, 1)
    end_of_month = ((first >> 1) -1).day
    start = 6 - first.wday

    puts first.strftime("%B %Y").center(21)
    puts " Su Mo Tu We Th Fr St"
    WEEK_TABLE.each do |week|
        buf = ""
        week[start, 7].each do |day|
            if day > end_of_month
                buf << "   "
            else
                buf << sprintf("%3d", day)
            end
        end
        puts buf
    end
end
end

t = Date.today
Calendar.cal(t.year, t.month)

t = Time.new
#p t.rfc2822
