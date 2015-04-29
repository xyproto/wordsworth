-- For retrieving parameters as part of the URL, specific Go methods
-- must be used. Look at FormValues etc in pkg/net/http

function mysplit(inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={} ; i=1
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                t[i] = str
                i = i + 1
        end
        return t
end

if method() == "GET" then
  serve("index.amber")
elseif method() == "POST" then
  content("text/html")
  print("GOT POST")
  print(urlpath())
  -- get the part after # with one of the pkg/net/http methods!
  print(mysplit(urlpath(), "#")[2])
  for key,value in pairs(formdata()) do print(key, value) end
end

-- vim:set ts=2 sw=2 et:
