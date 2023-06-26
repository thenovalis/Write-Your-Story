-- create newTextBox
local newTextBox;

-- main story function
function WriteYourStory()
  -- intro text
  print("Welcome to your story. Let's get started!")

 -- create mainstory 
  mainStory = {
    line1 = "Once upon a time, there was a ",
    line2 = " who lived in a ",
    line3 = ". They were always looking for adventure, so one day they decided to embark on a journey to ",
    line4 = ". On their way, they encountered many obstacles, such as ",
    line5 =" and ",
    line6 = ". Despite all these challenges, our protagonist was determined to reach their destination and eventually, they arrived at ",
    line7 = ". What will happen next? You decide! ",
  }

  -- create text box 
  newTextBox = display.newText( mainStory.line1, display.contentCenterX, display.contentCenterY - 100, native.systemFont, 36 )

  -- create listener for user input 
  Runtime:addEventListener( "userInput", writeStory )

end

-- write story function
function writeStory( event )

  -- user input variables
  local adjective = event.adjective 
  local noun1 = event.noun1
  local noun2 = event.noun2
  local destination = event.destination
  local obstacle1 = event.obstacle1
  local obstacle2 = event.obstacle2

  -- modify text box 
  newTextBox.text = mainStory.line1 .. adjective .. mainStory.line2 .. noun1 .. mainStory.line3 .. destination .. mainStory.line4 .. obstacle1 .. mainStory.line5 .. obstacle2 .. mainStory.line6 .. destination .. mainStory.line7

  -- add listener for button
  button:addEventListener( "tap", nextLine )

end

-- next line function 
function nextLine( event )

  -- modify text box 
  newTextBox.text = mainStory.line2 .. noun1 .. mainStory.line3 .. destination .. mainStory.line4 .. obstacle1 .. mainStory.line5 .. obstacle2 .. mainStory.line6 .. destination .. mainStory.line7 

  -- add listener for user input 
  Runtime:addEventListener( "userInput", writeStory )

end 


WriteYourStory()