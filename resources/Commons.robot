*** Settings ***
Documentation    Este arquivo será utilizado para registrar as keywords globais do projeto

Variables   ../config/Android.py
Library      AppiumLibrary
Library      OperatingSystem
Library      JSONLibrary


*** Keywords ***

Open App
    Open Application    ${URL_BASE}
    ...                 platformName=${PLATFORM_NAME}
    ...                 platformVersion=${PLATFORM_VERSION}
    ...                 deviceName=${DEVICE_NAME}
    ...                 automationName=${AUTOMATION_NAME}
    ...                 app=${EXECDIR}${APP}
    ...                 udid=${UDID}   

Close App
    Capture Page Screenshot
    Close Application

Check Element and Click
    [Arguments]    ${Element}
    Wait Until Element Is Visible    ${Element}    30
    Click Element    ${Element}

Check Element and Input 
    [Arguments]    ${Element}    ${Text}
    Wait Until Element Is Visible    ${Element}    30
    Input Text    ${Element}    ${Text}


Get Json File
    [Arguments]    ${JSON}    ${type}
    ${File}    Get File    ${EXECDIR}/data/${JSON}.json
    ${JSON}    Evaluate    json.loads($file)    json
    ${object}    Get Value From Json    ${json}     ${type}

    [Return]    ${object}