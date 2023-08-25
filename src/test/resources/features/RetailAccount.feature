@Regression
Feature: Retail Account Page

Background:
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'David.jaan@gmail.com' and password 'David123$'
    And User click on login button
    And User should be logged in into Account
@UpdateProfile
Scenario: Verify User can update Profile Information
    When User click on Account option
    And User update Name 'DavidSeconds' and Phone '7035558880'
    And User click on Update button
    Then user profile information should be updated
    
@AddPayment
Scenario: Verify User can add a payment method
    When User click on Account option
    And User click on Add a payment method link
    And User fill Debit or credit card information
    |cardNumber|nameOnCard|expirationMonth|expirationYear|securityCode|
    |2345672984655787|David |06 |2024 |888|
    And User click on Add your card button
    Then a message should be displayed ‘Payment Method added successfully’
    
    
 @UpdatePaymentCard  
Scenario: Verify User can edit Debit or Credit card
    When User click on Account option
    And User select payment card
    And User click on Edit option of card section
    And user edit information with below data
    |cardNumber|nameOnCard|expirationMonth|expirationYear|securityCode|
    |2222444455556788 |Davidss |08 |2028 |789 |
    And user click on Update Your Card button
    Then a message should be displayed ‘Payment Method updated Successfully’
    
    
 @RemovePaymentCard
Scenario: Verify User can remove Debit or Credit card
    When User click on Account option
    And User select payment card
    And User click on remove option of card section
    Then payment details should be removed
    
    
 @AddAddress   
 Scenario: Verify User can add an Address
    When User click on Account option
    And User click on Add address option
    And user fill new address form with below information
    |country |fullName |phoneNumber |streetAddress |apt |city |state |zipCode |
    |United States |David jaan |7035556770 |220 main St |304 |Chantilly |Virginia |20142 |
    And User click Add Your Address button
    Then a message should be displayed ‘Address Added Successfully’
    
    
 @EditAddress
 Scenario: Verify User can edit an Address added on account
    When User click on Account option
    And User click on edit address option
    And user fill new address form with below information
    |country|fullName|phoneNumber|streetAddress|apt       |city     | state |zipCode   |
    |United States |David john |7036665696 |303 Rock Street |500 |Chantilly |Virginia |20121 |
    And User click update Your Address button
    Then a message should be displayed ‘Address Updated Successfully’
    
    
 @RemoveAddress   
 Scenario: Verify User can remove Address from Account
    When User click on Account option
    And User click on remove option of Address section
    Then Address details should be removed
    
    