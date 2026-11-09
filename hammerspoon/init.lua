local appMap = {
  g = "Ghostty",
  f = "Finder",
  b = "Brave Browser",
  a = "DBeaver",
  s = "Slack",
  i = "IntelliJ IDEA CE",
  p = "Postman",
  z = "zoom.us",
  o = "OBS",
  m = "Activity Monitor",
  v = "Visual Studio Code",
  e = "Everdo",
  k = "Krita",
  n = "Notion"
}

for key, _ in pairs(appMap) do
  hs.hotkey.bind({"cmd", "alt"}, key, function()
      hs.application.launchOrFocus(appMap[key])
  end)
end
