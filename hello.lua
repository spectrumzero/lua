-- 在这里可以添加注释
print("你好lua")
print("你好世界")
print("hello world")

-- lua是动态类型语言变量不需要类型定义，只需要为变量赋值
-- 默认情况下，在lua中，变量总是全局的。local表示局部变量，这是表示变量是局部变量的唯一方式。局部变量作用域为从声明位置开始到所在语句块结束
-- 变量的默认值均为nil
b = 100
print(b)

-- 要删除全局变量，只需要将变量赋值为nil
b = nil
print(b)
-- 打印一个没有被赋值的变量
print(x)
print("+++++++++++++++++++++++++++++++++++++++++++++")

-- 使用type函数测试给定变量/值的类型，这个探测过程是lua语言自己完成的喔
-- string
print(type("你好lua"))
-- number
print(type(123))
-- nil
print(type(b))
-- string
print(type(type(print)))
-- function
print(type(print))
print(type(true))
print(type(true) .. "以及" .. type(123))
print("+++++++++++++++++++++++++++++++++++++++++++++")

-- table（表）在lua里，table的创建是通过“构造表达式来完成的”。其实这跟数组的逻辑是很类似的。且table不会固定大小，没有初始的table都是nil
-- 创建一个空表。
local t1 = {}
-- 或者直接初始化一个表
local t2 = { "苹果", "梨子", "橙子", "grape" }
-- 表的索引可以是数字，也可以是字符串，甚至可以是变量
t1["key"] = "字符串"
t1[123] = "数字"
a = 100
t1[a] = "变量"
-- 利用pairs函数遍历table
for k, v in pairs(t1) do
	print(k .. ":" .. v)
end
-- 也应该注意，lua表的默认初始索引一般以1开始，而不是像c语言的数组中，以0开始
for k, v in pairs(t2) do
	print("key", k)
end
-- 也可以利用一个循环完成初始化
t3 = {}
for i = 1, 10 do
	t3[i] = i
end
for k, v in pairs(t3) do
	print(k .. ":" .. v)
end
print("+++++++++++++++++++++++++++++++++++++++++++++")
