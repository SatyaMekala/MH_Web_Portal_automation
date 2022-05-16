!-- Scenario: cerate account in imdb
!-- When I set browser command line arguments to `--disable-notifications`
!-- Given I am on a page with the URL 'https://www.imdb.com/'
!-- When I click on element located `By.xpath(//div[contains(text(),'Sign In')])`
!-- When I click on element located `By.xpath(//a[contains(text(),'Create a New Account')])`
!-- When I enter `TestUser` in field located `By.xpath(//input[@id='ap_customer_name'])`
!-- When I enter `Test@gmail.com` in field located `By.xpath(//input[@id='ap_email'])`
!-- When I enter `Test@123#` in field located `By.xpath(//input[@id='ap_password'])`
!-- When I enter `Test@123#` in field located `By.xpath(//input[@id='ap_password_check'])`
!-- When I click on element located `By.xpath(//input[@id='continue'])`

Scenario: perform a search in imdb
When I set browser command line arguments to `--disable-notifications`
Given I am on a page with the URL 'https://www.imdb.com/'
When I enter `Pushpa` in field located `By.xpath(//input[@id='suggestion-search'])`
When I click on element located `By.xpath(//button[@id='suggestion-search-button'])`
When I click on element located `By.xpath(//table[1]/tbody[1]/tr[1]/td[2]/a[@href='/title/tt9389998/?ref_=fn_al_tt_1'])`
When I click on element located `By.xpath(//div[@class='ipc-btn__text'][contains(text(),'Add to Watchlist')])`
When I click on element located `By.xpath(//span[contains(text(),'Sign in with Google')][@class='auth-provider-text'])`
!-- When I click on element located `By.xpath(//div[@class='wLBAL'])`
When I enter `satya.sn1638@gmail.com` in field located `By.xpath(//input[@type='email'])`
When I click on element located `By.xpath(//span[contains(text(),'Next')])`
When I enter `SaiBaBa@Satya` in field located `By.xpath(//input[@type='password'])`
When I click on element located `By.xpath(//span[contains(text(),'Next')])`
When I click on element located `By.xpath(//input[@id='continue'])`
