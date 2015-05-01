if method() == "GET" then
  serve("index.amber")
elseif method() == "POST" then
  content("text/html")
  local data = formdata()
  local username = data["username"]
  local password = data["password"]
  if HasUser(username) and CorrectPassword(username, password) then
    print("Correct username and password.")
    if CookieLogin(username) then
      print("User was logged in with a cookie.")
    else
      print("Could not set login cookie!")
    end
  else
    print("Incorrect username and/or password.")
  end
end

-- vim:set ts=2 sw=2 et:
