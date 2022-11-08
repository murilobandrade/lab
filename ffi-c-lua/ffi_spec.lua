-- describe('setting a stub certificate', function()
-- it
-- end
local ffi = require('ffi')
ffi.cdef[[
void test_ppointer(char **msg);
void test_ppointer2(char **msg);
void test_ppointer3(char **msg);
]]
local ppointer = ffi.load("test_ppointer.o")
local c_chars_msg = ffi.new("char *[1]")
local c_chars_msg2 = ffi.new("char *[1]")
local c_chars_msg3 = ffi.new("char *[1]")
ppointer.test_ppointer(c_chars_msg)
ppointer.test_ppointer2(c_chars_msg2)
ppointer.test_ppointer3(c_chars_msg3)
-- assert(c_chars_msg == nil, "c_chars_msg isnt nil")
local str_msg2 = ffi.string(c_chars_msg2[0])
print(str_msg2)
assert(str_msg2 == "alguma coisa de bom tem que ter!!!!", "vixi")

local str_msg3 = ffi.string(c_chars_msg3[0])
print(str_msg3)
assert(str_msg3 == "alguma")

assert(c_chars_msg[0] ~= nil, "deveria ser nil")
-- local str_msg = ffi.string(c_chars_msg[0])
