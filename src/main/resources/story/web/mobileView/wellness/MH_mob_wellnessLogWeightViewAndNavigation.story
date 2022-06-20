Description:As a user, I want to be able to record my weight to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-490]
    @group critical_path
    @layout chrome_phone
    @wellness_logs
    @Priority 1

GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: [Mobile][Wellness Logs: Weight] View and Navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I click on element located `${xpathFor_mobMenuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobCommandWellnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_mobCommandWellnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightSectionInLeftPane}` becomes VISIBLE
When I send HTTP POST to the relative URL 'WellnessLog/get-sleep'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentlySectionInWeight}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWeightButtonInLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_recordWeightButtonInLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWeightPopup}` becomes VISIBLE
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
When I wait until an alert disappears

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightSectionInLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_weightSectionInLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightInHeaderSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBackToWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordWeightButtonInWeightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_graph}` becomes VISIBLE
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is > `1`
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is = `10`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFWIcon}` becomes VISIBLE
When I click on element located `${xpathFor_paginationFWIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationSecondPageSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationBackIcon}` becomes VISIBLE
When I click on element located `${xpathFor_paginationBackIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFirstPageSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName("Back to Wellness Logs")` becomes VISIBLE
When I click on element located `By.buttonName("Back to Wellness Logs")`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
