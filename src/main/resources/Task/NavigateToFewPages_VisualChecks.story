GivenStories: Task/trello_preCondition1.story

Scenario: Navigate to 5 pages
When I wait `PT10S` with `PT05S` polling until element located `By.xpath(//a[@data-tab='profile'])` becomes VISIBLE
When I click on element located `By.xpath(//a[@data-tab='profile'])`
When I ESTABLISH baseline with `Profile`
When I click on element located `By.xpath(//a[@data-tab='activity'])`
When I ESTABLISH baseline with `activity`
When I click on element located `By.xpath(//a[@data-tab='cards'])`
When I ESTABLISH baseline with `cards`
When I click on element located `By.xpath(//a[@data-tab='settings'])`
When I ESTABLISH baseline with `settings`