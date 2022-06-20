Description:As a user, I want to be able to record my steps to track my health progress and lifestyle

Meta:

    @Epic PT-170[PT-509]
    @group extended
    @layout desktop
    @wellness_logs
    @Priority 1

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Steps] General validation rules

When I click on element located `${xpathFor_menuWellness}`
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stepsSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordStepsInDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_mobRecordStepsInDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsButton}` becomes VISIBLE
When I clear field located `${xpathFor_enterSteps}` using keyboard
When I click on element located `${xpathFor_recordStepsButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgCannotLeftBlank}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes VISIBLE
When I enter `99999999999` in field located `${xpathFor_enterSteps}`
When I wait until an element with the tag 'input' and attribute 'max'='999999' appears
When I clear field located `${xpathFor_enterDateInRecordSteps}` using keyboard
When I enter `101025` in field located `${xpathFor_enterDateInRecordSteps}`
When I click on element located `${xpathFor_recordStepsButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_futureDateNotAllowedMsgInRecordSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes VISIBLE
