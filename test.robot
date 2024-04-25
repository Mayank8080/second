*** Settings ***
Documentation     Example test suite for login functionality.
Library           SeleniumLibrary

*** Variables ***
${LOGIN_URL}      https://kube-openpagedev-product.excelindia.com/sso/login?service=https%3A//kube-openpagedev-product.excelindia.com/wr/index.html&eulogin=true
${BROWSER}        Chrome

*** Test Cases ***
Successful Login
    [Documentation]    Test successful login with valid credentials.
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Input Text    username_field    rajan08@yopmail.com
    Input Password    password_field    Password@123
    Click Button    login_button
    Close Browser