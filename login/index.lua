if method() == "POST" then
  serve("post.amber")
elseif method() == "GET" then
  serve("get.amber")
end

-- vim:set ts=2 sw=2 et:
