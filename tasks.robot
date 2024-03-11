*** Settings ***
Documentation       Template robot main suite.

Library             RPA.Excel.Application
Library             RPA.Tables


*** Variables ***
${ActiveFilePath}=      ColumnCapture.xlsx


*** Tasks ***
Minimal task
    Open Application
    Open Workbook    filename=${ActiveFilePath}
    ${vRowData}=    RPA.Excel.Application.Get Range    G10:G40
    Log To Console    ${vRowData}
    ${Test}=    RPA.Tables.Create Table
    Add Table Column    ${Test}    name=MTD    ${vRowData}
    Log To Console    ${Test}
