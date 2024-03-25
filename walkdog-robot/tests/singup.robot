*** Settings ***
Documentation        Suite de testes de cadastro de dog walker

Resource    ../resources/base.resource

*** Test Cases ***

    #Variaveis normais
    #${name}             Set Variable     Fernanda Fittipaldi Santos
    #${email}            Set Variable     fefitti@gmail.com
    #${cpf}              Set Variable     00000014141
    #${cep}              Set Variable     88060224
    #${addressStreet}    Set Variable     Servidão Domingos Manoel da Silveira
    #${addressNumber}    Set Variable     1170
    #${addressDetails}   Set Variable     Casa
    #${addressDistrict}  Set Variable     São João do Rio Vermelho 
    #${addressCityUf}    Set Variable     Florianópolis/SC
    #${cnh}              Set Variable     toretto.jpg  

Não deve cadastrar se o cpf for incorreto
    [Tags]    cpf_inv

    ${dog_walker}        Create Dictionary    
    ...    name=Fernanda Fittipaldi
    ...    email=fefitti@gmail.com
    ...    cpf=000000141aa
    ...    cep=88060224
    ...    street=Servidão Domingos Manoel da Silveira
    ...    district=São João do Rio Vermelho
    ...    city_uf=Florianópolis/SC
    ...    number=1170
    ...    details=Casa
    ...    cnh=toretto.jpg

    Start session
    Go to signup page
    Fill singup form    ${dog_walker}
    Subimit signup form
    Finish session






        
    