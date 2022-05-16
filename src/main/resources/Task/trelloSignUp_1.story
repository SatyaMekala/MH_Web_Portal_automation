Scenarioe: Trello sign up
Given I am on a page with the URL 'https://trello.com/'

When I initialize the STORY variable `testUserEmail` with value `#{generate(Name.firstName)}`
When I initialize the STORY variable `testUserPass` with value `#{generate(regexify '[abcdefghigk]{10}')}`
When I initialize the STORY variable `testUserEmail` with value `#{toUpperCase(${testUserEmail})}`

When I click on element located `By.xpath(//a[contains(text(),'Sign up')])`
When I enter `${testUserEmail}@as-aws-dev.com` in field located `By.xpath(//input[@type='email'])`
When I click on element located `By.xpath(//input[@id='signup-submit'])`
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//span[contains(text(),'Sign up')])` becomes VISIBLE
When I click on element located `By.xpath(//span[contains(text(),'Sign up')])`
When I enter `${testUserPass}` in field located `By.xpath(//input[@type='password'])`
When I click on element located `By.xpath(//span[contains(text(),'Next')])`
When I take screenshot
