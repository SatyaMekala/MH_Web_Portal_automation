Scenario: Sing Up New User
Meta:
    @layout desktop
Given I am on the main application page
When I find <= '1' elements by By.xpath(//header/nav[1]/a[1]/*[1]) and for each element do
|step|
|When I change context to an element by By.xpath(//header/nav[1]/a[1]/*[1])|
|When I click on an element with the text 'Sign in'|
|When I initialize the STORY variable `testUserEmail` with value `#{generate(Name.firstName)}`|
|When I initialize the STORY variable `testUserPass` with value `#{generate(regexify '[abcdefghigk]{10}')}`|
|When I initialize the STORY variable `testUserEmail` with value `#{toUpperCase(${testUserEmail})}`|
|When I enter `${testUserEmail}@as-aws-dev.com` in field located `By.xpath(//input[@id='user'])`|
|When I enter `${testUserPass}` in field located `By.xpath(//input[@id='password'])`|
|When I click on an element by the xpath '//input[(@type="submit")]'|
