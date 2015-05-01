if method() == "GET" then
  -- Go to the main page if this is a GET request
  serve("../index.amber")
elseif method() == "POST" then
  -- Try to log in the user if this is a POST request
  content("text/html")
  local data = formdata()
  local username = data["username"]
  local password = data["password"]
  if HasUser(username) and CorrectPassword(username, password) then
    print("Correct username and password.")
    if CookieLogin(username) then
      print("User was logged in with a cookie.")
      --serve("../chat/index.amber")
    else
      print("Could not set login cookie!")
    end
  else
    print("Incorrect username and/or password.")
  end
end

-- vim:set ts=2 sw=2 et:
