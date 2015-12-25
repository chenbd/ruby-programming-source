# encoding: utf-8
#
def to_utf8(str_gbk, str_gb2312)
    str_gbk.encode("utf-8") + str_gb2312.encode("utf-8")
end


str_gbk = "你好".encode("gbk")
str_gb2312 = "再见".encode("gb2312")

p to_utf8(str_gbk, str_gb2312)
