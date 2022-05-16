Scenario: search for a product
!-- --/prefetch:1
When I set browser command line arguments to `--disable-notifications`
When I set browser command line arguments to `--/prefetch:1`

Given I am on a page with the URL 'https://www.walmart.com/'

!-- When I wait until the page title contains the text 'Robot or human?'
When I wait `PT30S` with `PT05S` polling until element located `By.xpath(//button[@aria-label='Close dialog']/i[@class='ld ld-Close'])` becomes NOT_VISIBLE

When I click on element located `By.xpath(//button[@aria-label='Close dialog']/i[@class='ld ld-Close'])`
!-- When I wait `PT30S` with `PT05S` polling until element located `By.xpath(//h2[@id='ld_modalTitle_1'][text()='Robot or human?'])` becomes NOT_VISIBLE
!-- When I wait until an element with the tag 'i' and attribute 'class'='ld ld-Close' disappears



When I enter `mobile` in field located `By.xpath(//input[@name='q'])`
When I click on element located `By.xpath(//a[@link-identifier='640397234'][@class='absolute w-100 h-100 z-1'])`
