*** Settings ***
Documentation        Arquivo principal do projeto

Library            Browser

Resource          actions/singup.resource


*** Keywords ***
Start session
    New Browser    browser=firefox    headless=False 
    New Page       https://walkdog.vercel.app

      
Finish session
    Take Screenshot