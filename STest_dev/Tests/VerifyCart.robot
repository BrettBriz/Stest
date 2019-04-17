*** Settings ***
Documentation       Test2
Library             SeleniumLibrary
Resource            ../Lib/setup_teardown.robot

Test Setup          Setup Test
Test Teardown       Teardown Test
Force Tags          stest2


*** Test Cases ***
Sign in and verify Tops and dresses and add item to cart
    Click Sign In Link
    Create Account
    Create Inputs User Info
    Create Inputs DOB
    Assert fieldnames match
    Create Inputs Address and Submit
    Assert Cart is empty
    Click Women Tab
    Expand list for TOPS and DRESSES
    Assert number of items
    Add product to cart and verify update

