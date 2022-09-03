#!/usr/bin/env lua
local f=arg[1]

function is_file(f)
 h=io.popen("file "..f)
 res=h:read("*a")
 h:close()
 return res:match("text")=="text"
end

if is_file(f) then
 h=io.popen("micro "..f)
 res=h:read("*a")
 h:close()

 f=io.open(f, 'w')
 f:write(res)
 f:close()
end
