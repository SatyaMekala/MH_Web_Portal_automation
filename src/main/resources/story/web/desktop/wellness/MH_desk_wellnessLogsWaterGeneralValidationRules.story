Description:As a user, I want to be able to record my water to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-511]
    @group extended
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Water] General Validation Rules

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waterSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterButton}` becomes VISIBLE
When I click on element located `${xpathFor_recordWaterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterPopup}` becomes VISIBLE
When I click on element located `${xpathFor_recordWaterButtonInRecordPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgWaterIsRequired}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterWaterInWaterRecordPopup}` becomes VISIBLE
When I enter `999999` in field located `${xpathFor_enterWaterInWaterRecordPopup}`
When I click on element located `${xpathFor_recordWaterButtonInRecordPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_maxWaterAllowedInOunces}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterButtonInLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_recordWaterButtonInLeftPane}`
When I clear field located `${xpathFor_enterDateInRecordSteps}` using keyboard
When I enter `101025` in field located `${xpathFor_enterDateInRecordSteps}`
When I enter `999999` in field located `${xpathFor_enterWaterInWaterRecordPopup}`
When I click on element located `${xpathFor_recordWaterButtonInRecordPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_futureDateNotAllowedMsgInRecordSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterWaterInWaterRecordPopup}` becomes VISIBLE
