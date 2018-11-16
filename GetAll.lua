--GetAll - A bespoke frontend for eric-wieser's computercraft-github cloner.
--Depends on: DCore (dc/lua) version 0.0.1; Latest computercraft-github

--Imports
os.loadAPI("dc")

--List of programs
DC = "dinxton/dcore"
GA = "dinxton/GetAll"

--Initialising variables
counter = 0
--Functions
function fGithub(link)
  shell.run("github", "clone", link, "/")
end


function downloadNotify (selection)
  term.write("Downloading selection "..selection)
  dc.newLine()
  fGithub(selection)
end

function commandsInput
  if counter = 0 then
    term.write("Please enter the number of the program you wish to download.")
  else
    term.write("Do you want to download another program?")
  end
  dc.newLine()
  term.write("DC - DCore - dc.lua")
  dc.newLine()
  term.write("GA - GetAll - GetAll.lua")
  dc.newLine()
  local input = read()
  downloadNotify(input)
  counter+=1
end
--Clearing screen
dc.clearScrn()
--Program selection


commandsInput()