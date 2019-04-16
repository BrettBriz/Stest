*** Settings ***

Documentation  Sets up the test environment
Library   SeleniumLibrary
Resource    ../Locators/TestLocators.robot
Resource    common.robot
Library           String
Library           DateTime

*** Variables ***
${url}        http://automationpractice.com/index.php
${FIRST_NAME_VALUE}      Harry
${BROWSER}    Chrome


*** Keywords ***

Setup Test
   open browser   ${url}  ${BROWSER}

Teardown Test
   close browser


#####

Get Random String With Date Stamp
    ${rando}    String.Generate Random String    5    [LOWER]
    ${date}     DateTime.Get Current Date      result_format=%m_%d_%y
    ${string}   Catenate    SEPARATOR=_       ${date}     ${rando}
    [Return]    ${string}

Generate Email
    ${return} =    Get Random String With Date Stamp
    ${input_email} =    Catenate    SEPARATOR=_       ${return}
    ${final_email} =    Catenate    SEPARATOR=@    ${input_email}    yopmail.com
    set global variable     ${final_email}

Generate Screen Name
    ${randNumbers}      Generate Random String      5       [NUMBERS]
    set global variable         ${randNumbers}

