*** Variables ***

${logo}     xpath=//div[@id='header_logo']/a/img
${sign_in}   xpath=//nav/div/a
${create_account_button}    id=SubmitCreate
${email_create}     id=email_create

#create account
${gender}    id=id_gender1
${first_name}      id=customer_firstname
${lastname}   id=customer_lastname

${address_firstname}     id=firstname
${address_lastname}      id=lastname
${password}         id=passwd

${address1}             id=address1
${address2}             id=address2
${city}                 id=city
${state}              id=id_state
${post_code}          id=postcode
${mobile_phone}       id=phone_mobile
${register_account_button}      xpath=//div[4]/button/span

${cart}       css=b
${women_tab}    xpath=//div[@id='block_top_menu']/ul/li/a
${women_text}     xpath=//div[3]/div/div/h2

${tops_expand}      xpath=//li/span
${dressesexpand}    xpath=//li[2]/span

${counter}    css=.heading-counter
${add_to_cart}    xpath=//div[@id='center_column']/ul/li[3]/div/div[2]/div[2]/a/span

${success_add}     css=h2:nth-child(2)