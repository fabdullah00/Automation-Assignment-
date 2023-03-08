*** Setting ***
Library  SeleniumLibrary
Library  String
Variables  ../PageObjects/Locators.py

*** Test Cases ***
Case#1
    open browser    ${url}  ${browser}
    maximize browser window
    Execute Javascript   window.open("http://jqueryui.com/droppable/","_self")
    sleep  2
    Select Frame  xpath://*[@id="content"]/iframe
    Sleep  2
    Drag and Drop   xpath://*[@id="draggable"]   xpath://*[@id="droppable"]
    Sleep  2

Case#2
    open browser    ${url}  ${browser}
    maximize browser window
    Execute Javascript   window.open("http://jqueryui.com/selectable/","_self")
    Sleep  2
    Select Frame  xpath://*[@id="content"]/iframe
    Sleep  2
    Click Element  xpath://*[@id="selectable"]/li[1]  CTRL
    Sleep  2
    Click Element  xpath://*[@id="selectable"]/li[3]  CTRL
    Sleep  2
    execute javascript    window.scrollTo(500,500)
    Sleep  2
    Click Element  xpath://*[@id="selectable"]/li[7]  CTRL
    Sleep  2

Case#3
    open browser    ${url}  ${browser}
    maximize browser window
    Execute Javascript   window.open("http://jqueryui.com/controlgroup/","_self")
    Sleep  2
    Select Frame  xpath://*[@id="content"]/iframe
    Sleep  2
    Click Element  xpath:/html/body/div[1]/fieldset[1]/div/label[2]
    Sleep  2
    Click Element  xpath:/html/body/div[1]/fieldset[1]/div/label[3]
    Sleep  2
    Input text  id:horizontal-spinner  2
    Sleep  2
    execute javascript    window.scrollTo(500,500)
    Sleep  2
    Click Element  xpath:/html/body/div[1]/fieldset[2]/div/label[1]
    Sleep  2
    Click Element  xpath:/html/body/div[1]/fieldset[2]/div/label[3]
    Sleep  2
    Input text  id:vertical-spinner  1
    Sleep  2
    click element  id:book
