Scenario: Create an account
When I set browser command line arguments to `--disable-notifications`

Given I am on a page with the URL 'https://www.reddit.com/'
When I click on element located `By.xpath(//a[contains(text(),'Sign Up')][@role='button'])`
When I switch to frame located `By.xpath(//iframe[@class='_25r3t_lrPF3M6zD2YkWvZU'])`
When I enter `satya.sn1638@gmail.com` in field located `By.xpath(//input[@id='regEmail'])`
When I click on element located `By.xpath(//button[@type='submit'][@data-step='email'])`
When I enter `Satya1007` in field located `By.xpath(//input[@id='regUsername'])`
When I enter `SaiBaBa@123#` in field located `By.xpath(//input[@id='regPassword'])`
When I wait until a frame with the name 'a-29yqzgoz1egp' appears
When I switch to frame located `By.xpath(//iframe[@title='reCAPTCHA'])`
When I click on element located `By.xpath(//div[@id='rc-anchor-container'])`
When I click on element located `By.xpath(//button[@class='AnimatedForm__submitButton SignupButton'])`





!-- When I wait until element located `By.xpath(//div[@role='presentation'][@class='recaptcha-checkbox-border'])` appears
!-- When I click checkbox located by `By.xpath(//div[@role='presentation'][@class='recaptcha-checkbox-border'])`

!-- When I click on element located `By.xpath(//div[@role='presentation'][@class='recaptcha-checkbox-border'])`
