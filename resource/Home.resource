*** Settings ***
Library    Process
Library    OperatingSystem

*** Variables ***
${legado}  C:\\Users\\Benet\\Desktop\\acesso_legado.bat

*** Keywords ***
Open system
    ${output}  Run  ${CURDIR}${\}acesso_legado.bat
