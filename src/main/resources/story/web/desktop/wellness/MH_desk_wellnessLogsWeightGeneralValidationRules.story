Description:As a user, I want to be able to record my weight to track my health progress and lifestyle.
Meta:

    @Epic PT-170[PT-491]
    @group extended
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Weight] General validation rules

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWeightButtonInLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_recordWeightButtonInLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWeightPopup}` becomes VISIBLE
When I click on element located `${xpathFor_recordWeightButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgWeightGreaterThan20}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterWeight}` becomes VISIBLE
When I enter `19` in field located `${xpathFor_enterWeight}`
When I click on element located `${xpathFor_recordWeightButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgWeightGreaterThan20}` becomes VISIBLE
When I enter `75` in field located `${xpathFor_enterWeight}`
When I clear field located `${xpathFor_enterDateInRecordSteps}` using keyboard
When I enter `101025` in field located `${xpathFor_enterDateInRecordSteps}`
When I click on element located `${xpathFor_recordWeightButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_futureDateNotAllowedMsgInRecordSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWeightPopup}` becomes VISIBLE
