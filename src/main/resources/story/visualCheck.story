Scenario: compare screenshot

When I set browser command line arguments to `--disable-notifications`
Given I am on a page with the URL 'https://www.google.com/'
When I ESTABLISH baseline with `TestImage` ignoring:
|ELEMENT            |
|By.tagName(input)|