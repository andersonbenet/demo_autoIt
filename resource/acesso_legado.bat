TITLE Legado
@ECHO OFF
REM batch feito por Ramses Almeida, Nikolas Manne. Apoio no processo Thais Kirscher.
REM Direitos reservados a DBServer, bla bla bla...
REM ricardo_vieira - Alteração para execução dentro da VM de automatização

color 1a
R: 
cd util 
CALL SETBANCO COREDBHOM
REM CALL R:\util\SETBANCO_ACN.bat DB1CORE2062T

:MENU
CLS
ECHO -------------------------------------------------------------------
ECHO             DBServer Team - Acesso Legado - Sicredi
ECHO -------------------------------------------------------------------
ECHO SELECIONE A OPCAO DESEJADA
ECHO.
ECHO 1 - SIAT
ECHO 2 - SIAC
ECHO 3 - SIRET
ECHO 4 - SGU
ECHO 5 - ALTERAR BANCO DE DADOS
ECHO 6 - SACG
ECHO 7 - EXIT
ECHO -------------------------------------------------------------------
ECHO.
SET /P M=
IF %M%==1 GOTO SIAT
IF %M%==2 GOTO SIAC
IF %M%==3 GOTO SIRET
IF %M%==4 GOTO SGU
IF %M%==5 GOTO BANCO
IF %M%==6 GOTO SACG
IF %M%==7 GOTO EOF

:SIAT
SET /P agencia=Digite o numero da agencia:

CALL C:\legado\exes\teacc.exe c: T:\Automacao\exes\Legado_Comercial\17.07.16\siat\siatpilo.exe ag%agencia%

@Pause
GOTO MENU

:SIAC
SET /P agencia=Digite o numero da agencia:

CALL C:\legado\exes\teacc.exe c: T:\Automacao\exes\Legado_Comercial\SIAC\siac-exe-2.44.0.46-win32-bcc5.x-xhb0.99.x ag%agencia%

@Pause
GOTO MENU

:SIRET
SET /P agencia=Digite o numero da agencia:

CALL C:\legado\exes\teacc.exe c: T:\Automacao\exes\Legado_Comercial\SIRET_Homo\siret-exe-2.68.0.148000-win32-bcc5.x-xhb0.99.x.exe ag%agencia%

@Pause
GOTO MENU

:SGU

CALL R:\exes\teacc.exe c: R:\exes\sgu_129.exe


@Pause
GOTO MENU


:SACG
SET /P agencia=Digite o numero da agencia:
REM SET /P executavel=Digite o executavel que vai utilizar e pressione ENTER:

CALL C:\legado\exes\teacc.exe c: T:\Automacao\exes\Legado_Comercial\SACG\sacg-exe-3.32.20.99000-win32-bcc5.x-xhb0.99.x ag%agencia%
REM CALL E:\legado\exes\teacc.exe c: T:\Automacao\exes\Legado_Comercial\SACG\%executavel%.exe ag%agencia%

@Pause
GOTO MENU


@Pause
GOTO MENU

:BANCO
SET /P banco=Digite o banco de dados que deseja utilizar:
CALL setbanco %banco%
ECHO Banco alterado para '%banco%' !
ECHO.
@Pause
GOTO MENU



