*** Settings ***
Library  AutoItLibrary

*** Variables ***
${legado}        "C:\\Users\\Benet\\Desktop\\acesso_legado.bat"

*** Keywords ***
Open system
    Run    ${legado}
    Win Wait        WindowTitle=Legado
