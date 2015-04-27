--- Algernon Server Configuration
SetAddr(":3000")
SetDebug(true)
OnReady(function()
  print(ServerInfo())
end)
