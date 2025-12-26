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
	
Empty First Name  
	Input Text    name=lastname   Somyod
	Input Text    name=organization    CS KKU
	Input Text    name=email	somyod@kkumail.com
	Input Text    name=phone	091-001-1234
	
	Click Button    Register
	
	Location Should Be    ${URL1}
	Title Should Be    Registration
	Page Should Contain    Please enter your first name!!
	
	Sleep    2s
    Close Browser

#--------------------------------------------------------------------------------

Open Workshop Registration Page
    Open Browser    ${URL1}    ${BROWSER}
	Location Should Be    ${URL1}
	
Empty Last Name  
	Input Text    name=firstname   Somyod
	Input Text    name=organization    CS KKU
	Input Text    name=email	somyod@kkumail.com
	Input Text    name=phone	091-001-1234
	
	Click Button    Register
	
	Location Should Be    ${URL1}
	Title Should Be    Registration
	Page Should Contain    Please enter your last name!!
	
	Sleep    2s
    Close Browser

#--------------------------------------------------------------------------------

Open Workshop Registration Page
    Open Browser    ${URL1}    ${BROWSER}
	Location Should Be    ${URL1}
	
Empty First Name and Last Name 
	Input Text    name=organization    CS KKU
	Input Text    name=email	somyod@kkumail.com
	Input Text    name=phone	091-001-1234
	
	Click Button    Register
	
	Location Should Be    ${URL1}
	Title Should Be    Registration
	Page Should Contain    Please enter your name!!
	
	Sleep    2s

Empty Email
    Input Text    name=firstname   Somyod
	Input Text    name=lastname   Sodsai
	Input Text    name=email	${EMPTY}
	Input Text    name=organization    CS KKU
	Input Text    name=phone	091-001-1234
	
	Click Button    Register
	
	Location Should Be    ${URL1}
	Title Should Be    Registration
	Page Should Contain    Please enter your email!!
	
	Sleep    2s
    Close Browser

#--------------------------------------------------------------------------------

Open Workshop Registration Page
    Open Browser    ${URL1}    ${BROWSER}
	Location Should Be    ${URL1}
	
Empty Phone Number
	Input Text    name=firstname   Somyod
	Input Text    name=lastname   Sodsai
	Input Text    name=organization    CS KKU
	Input Text    name=email	somyod@kkumail.com
	Input Text    name=phone	1234
	
	Click Button    Register
	
	Location Should Be    ${URL1}
	Title Should Be    Registration
	Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)
	
	Sleep    2s
	Close Browser