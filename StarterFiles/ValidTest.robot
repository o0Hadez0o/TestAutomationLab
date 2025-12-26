*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROME_DRIVER_PATH}     ${EXECDIR}${/}chromedriver-win64${/}chromedriver.exe
${URL1}                   http://localhost:7272/Lab4/Registration.html
${URL2}                   http://localhost:7272/Lab4/Success.html
${BROWSER}				  Chrome

*** Test Cases ***
Open Workshop Registration Page
    Open Browser    ${URL1}    ${BROWSER}
	Location Should Be    ${URL1}

Register Success
    Input Text    name=firstname   Somyod
	Input Text    name=lastname   Sodsai
	Input Text    name=organization    CS KKU
	Input Text    name=email	somyod@kkumail.com
	Input Text    name=phone	091-001-1234
	
	Click Button    Register
	
	Title Should Be	Success
	Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.
	
	Sleep    2s
    Close Browser

#--------------------------------------------------------------------------------

Open Workshop Registration Page
    Open Browser    ${URL1}    ${BROWSER}
	Location Should Be    ${URL1}
	
Register Success No Organization Info
    Input Text    name=firstname   Somyod
	Input Text    name=lastname   Sodsai
	Input Text    name=email	somyod@kkumail.com
	Input Text    name=phone	091-001-1234
	
	Click Button    Register
	
	Title Should Be	Success
	Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.
	
	Sleep    2s
    Close Browser
	
