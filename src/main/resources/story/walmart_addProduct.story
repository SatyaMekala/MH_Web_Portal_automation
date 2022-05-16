!-- Scenarioe: Create account in walmart.com
!-- Given I am on a page with the URL 'https://www.walmart.com/account/signup?vid=oaoh'
!-- When I enter `Satya` in field located `By.xpath(//input[@id='first-name-su'])`
!-- When I enter `Narayana` in field located `By.xpath(//input[@id='last-name-su'])`
!-- When I enter `satya.sn1638@gmail.com` in field located `By.xpath(//input[@id='email-su'])`
!-- When I enter `Test1234` in field located `By.xpath(//input[@id='password-su'])`
!-- When I click on element located `By.xpath(//body/div[1]/div[1]/div[2]/form[2]/button[1])`

!-- Scenarioe: search a product by a searchbox
!-- Given I am on the main application page
!-- When I enter `mobile` in field located `By.xpath(//input[@name='q'])`


!-- /////  Rough //////
!-- When I wait until element located `name(PRESS & HOLD-image)` disappears
!-- When I wait until the page title contains the text 'Robot or human?'
!-- When I press keys ENTER on keyboard
!-- When I press keys ENTER on keyboard

Scenario: open product page for product from previous step & add product
Given I am on a page with the URL 'https://www.walmart.com/'
When I wait until an element with the tag 'elementTag' and attribute 'attributeType'='attributeValue' appears
When I click on element located `By.xpath(//span[@class='mr2'][1])`
When I click on element located `By.xpath(//button[@id='cart-button-header'])`
