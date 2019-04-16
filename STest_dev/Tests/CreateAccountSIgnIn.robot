*** Settings ***
Documentation       Test1
Library             SeleniumLibrary
Resource            ../Lib/setup_teardown.robot

Test Setup          Setup Test
Test Teardown       Teardown Test
Force Tags          stest1
Resource            ../Lib/setup_teardown.robot


*** Test Cases ***
Sign in and verify Cart is empty
    Click Sign In Link
    Create Account
    Create Inputs User Info
    Create Inputs DOB
    Assert fieldnames match
    Create Inputs Address and Submit
    Assert Cart is empty


