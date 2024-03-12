*** Settings ***
Documentation       Template robot main suite.

Library             RPA.Excel.Application
Library             RPA.Tables


*** Variables ***
${ActiveFilePath}=      ColumnCapture.xlsx


*** Tasks ***
Minimal task
    RPA.Excel.Application.Open Application
    RPA.Excel.Application.Open Workbook    filename=${ActiveFilePath}
    ${vRowData}=    RPA.Excel.Application.Get Range    G10:G40
    Log To Console    ${vRowData}
    ${len}=    Get Length    ${vRowData}
    ${Test2}=    RPA.Tables.Create Table    ${vRowData}
    Log To Console    ${Test2}
    # ${Test}=    RPA.Tables.Create Table
    # Set Table Column    ${Test}    name=MTD    values=${vRowData}
    # Log To Console    ${Test}
