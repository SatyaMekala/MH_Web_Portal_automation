Scenario: Check web elements interactions
Meta:

@severity 1
@layout desktop

Given I am on the main application page
Then the page title comparisonRule 'Sign Up for a Free HR Software Demo | OrangeHRM'

!-- Test the text interactions
!-- When I click on element located `By.xpath(//input[@id='Form_submitForm_FirstName'])`
When I enter `Satya` in field located `By.xpath(//input[@id='Form_submitForm_FirstName'])`
When I enter `Narayana` in field located `By.xpath(//input[@id='Form_submitForm_LastName'])`
When I enter `satya.sn1638@gmail.com` in field located `By.xpath(//input[@id='Form_submitForm_Email'])`
When I enter `1234567890` in field located `By.xpath(//input[@id='Form_submitForm_Contact'])`
When I select the value 'India' in a slider by the xpath '(//select[@id='Form_submitForm_Country'])'
!-- When I wait until element located `By.xpath("//span[@id='recaptcha-anchor']")` appears

When I click on element located `By.xpath("//span[@id='recaptcha-anchor']")`




!-- When I take screenshot and save it to folder `C://Users//Satya_Mekala//sample_vividus_project//output`

!-- When I scroll element located `By.xpath("//select[@id='Form_submitForm_Country']")` into view

!-- When I click on element located `By.xpath(//select[@id='Form_submitForm_Country'])`
!-- When I enter `India` in field located `By.xpath(//select[@id='Form_submitForm_Country'])`
!-- When I wait until element located `locator` disappears
!-- When I wait until element located `By.xpath("//body/div[1]/div[2]/div[4]/div[2]/div[1]")` contains text 'Accept Cookies'
!-- When I click on element located `By.xpath("//body/div[1]/div[2]/div[4]/div[2]/div[1]")`
!-- When I select `India` in dropdown located `By.xpath("//select[@id='Form_submitForm_Country']")`





!-- When I click on all elements located `By.xpath(//select[@id='Form_submitForm_Country'])`
!-- When I select the value 'India' in a slider by the xpath '(//option[contains(text(),'India')])'
