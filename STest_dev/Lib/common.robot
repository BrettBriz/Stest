*** Settings ***
Documentation    common Keywords
Library   SeleniumLibrary
Resource   setup_teardown.robot

*** Keywords ***
Click Sign In Link
    wait until element is visible     ${sign_in}
    click element     ${sign_in}

Create Account
   wait until element is visible    ${create_account_button}     5s
   Generate Email
   input text      ${email_create}     ${final_email}
   click element        ${create_account_button}

Create Inputs User Info
   wait until element is visible      ${gender}     5s
   click element   ${gender}
   Generate Screen Name
   input text       ${first_name}     ${FIRST_NAME_VALUE}
   input text       ${last_name}      Smith
   input text       ${password}       test123

Create Inputs DOB
   select from list by value          id=days       1
   select from list by value          id=months     2
   select from list by value          id=years      1999

Create Inputs Address and Submit
   input text       ${address1}      15 Valley Vista
   input text       ${city}       Sherman Oaks
   select from list by value      ${state}      5
   input text      ${post_code}       91403
   input text       ${mobile_phone}     8185556767
   click element     ${register_account_button}

Assert fieldnames match
   ${firstVar}      get value    ${address_firstname}
   ${lastVar}      get value    ${address_lastname}
   should be equal     ${firstVar}     ${FIRST_NAME_VALUE}
   should be equal      ${lastVar}     Smith

Assert Cart is empty
   wait until element is visible     ${cart}     5s
   wait until keyword succeeds    3x     3s   click element     ${cart}
   ${empty_text}      get text      xpath=//div[@id='center_column']/p
   should be equal     ${empty_text}      Your shopping cart is empty.

Click Women Tab
   wait until element is visible   ${women_tab}     5s
   click element     ${women_tab}
   wait until page contains element     ${women_text}
   ${var}     get text    ${women_text}
   should be equal     ${var}    WOMEN

Expand list for TOPS and DRESSES
  wait until page contains element      ${tops_expand}
  click element      ${tops_expand}
  click element      ${dressesexpand}

Assert number of items
    wait until page contains element      ${counter}
    ${var}       get text     ${counter}
    should be equal    ${var}    There are 7 products.

Add product to cart and verify update
   wait until keyword succeeds   2x    4s     wait until page contains element      ${add_to_cart}     10s
   click element     xpath=//div[@id='center_column']/ul/li[3]/div/div/div/a/img
   select frame     //iframe[@class='fancybox-iframe']
   wait until keyword succeeds   2x    4s     click element     xpath=//button/span
   wait until page contains element      ${success_add}
   ${var}     get text    ${success_add}
   should contain   ${var}    successfully


