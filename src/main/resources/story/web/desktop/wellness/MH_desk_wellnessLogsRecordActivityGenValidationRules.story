Description:As a user, I want to be able to record my fitness activities to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-507]
    @group extended
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Record Activity] General validation rules

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordActivityButtonInRightPane}` becomes VISIBLE
When I click on element located `${xpathFor_recordActivityButtonInRightPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessAvtivityPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_activityTypeDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_activityTypeDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_OtherValueFromActivityTypeDropdown}` becomes VISIBLE
When I click on element located `${xpathFor_OtherValueFromActivityTypeDropdown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_descriptionFieldInRecordFitnessActPopup}` becomes VISIBLE
When I enter `Adding more than 20 characters in the description` in field located `${xpathFor_descriptionFieldInRecordFitnessActPopup}`
When I wait until an element with the tag 'input' and attribute 'value'='Adding more than 20 chara' appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationHours}` becomes VISIBLE
When I enter `29` in field located `${xpathFor_durationHours}`
When I wait until an element with the tag 'input' and attribute 'max'='23' appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationMinutes}` becomes VISIBLE
When I enter `72` in field located `${xpathFor_durationMinutes}`
When I wait until an element with the tag 'input' and attribute 'max'='59' appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationSeconds}` becomes VISIBLE
When I enter `80` in field located `${xpathFor_durationSeconds}`
When I wait until an element with the tag 'input' and attribute 'max'='59' appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_distanceMiles}` becomes VISIBLE
When I enter `2000` in field located `${xpathFor_distanceMiles}`
When I clear field located `${xpathFor_enterDateInRecordFitnessActivity}` using keyboard
When I enter `101025` in field located `${xpathFor_enterDateInRecordFitnessActivity}`
When I click on element located `${xpathFor_recordFitnessActivityButtonInPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_futureDateNotAllowedMsgInRecordSteps}` becomes VISIBLE
