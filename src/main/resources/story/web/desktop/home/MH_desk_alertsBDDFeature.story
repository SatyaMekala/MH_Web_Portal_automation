Description: As a patient/user, I want to see important announcements as alerts to be efficiently and promptly informed on the most notable changes

Meta:

    @Epic PT-170[PT-419]
    @group critical_path
    @layout desktop
    @articles
    @Priority 1


GivenStories: story/web/desktop/logIn/MH_Login.story


Scenario: [Desktop][Alerts] View and naviagtion

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert1_downLoadOurApp}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert1_dateForAlert1}` becomes VISIBLE
When I click on element located `${xpathFor_alert1_downLoadOurApp}`
When I wait until element located `${xpathFor_popup_downLoadOurApp}` appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_text_youCanDownLoadMHMobileApp}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_closeButtonDownLoadOurApp}` becomes VISIBLE
When I click on element located `${xpathFor_closeButtonDownLoadOurApp}`

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert2_OverTheCounterMedication}` becomes VISIBLE
When I click on element located `${xpathFor_alert2_OverTheCounterMedication}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert2Title_OverTheCounterMedication}` becomes VISIBLE

When I scroll element located `${xpathFor_alert2_PrivacyPolicyLink}` into view


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert2_PrivacyPolicyLink}` becomes VISIBLE
When I click on element located `${xpathFor_alert2_PrivacyPolicyLink}`


When I switch to a new window
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert2_PrivacyAndSecurityPolicyInNewWindow}` becomes VISIBLE
