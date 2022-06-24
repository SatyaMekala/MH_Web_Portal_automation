Description: As a user, I want to be able to see detailed info about available health centers to plan my visits more efficiently

Meta:

    @Epic PT-170[PT-396]
    @group critical_path
    @layout desktop
    @locations
    @Priority 1

    GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Location] Location Details


When I click on element located `${xpathFor_menuAppointments}`
When I click on element located `${xpathFor_appointments_HCL}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_InHomePage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewDetailsLinkForNonVirtualClinics}` becomes VISIBLE
When I click on element located `${xpathFor_viewDetailsLinkForNonVirtualClinics}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com//clinic/get-clinic?clinicId=56`
Then the response code is equal to '200'
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_detailsOfNonVirtualClinic}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_backToLocationsLinkInMobView}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_detailsOfNonVirtualClinic}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_contactInfoAndDetails}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_healthCenterPhone}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_clinicPhone}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_clinicAddress}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_clinicAddressInfo}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${getDirectionsLinktext}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_hoursTitle}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_clinicHours}` becomes VISIBLE
When I scroll context to BOTTOM edge
When I scroll element located `${xpathFor_providersTitle}` into view
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_healthCoaches}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_clinicInMap}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT15S` with `PT05S` polling until element located `${getDirectionsLinktext}` becomes VISIBLE
When I click on element located `${getDirectionsLinktext}`
When I switch to window with title that contains `Google Maps`
When I close the current window
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_backToLocationsLinkInMobView}` becomes VISIBLE
When I click on element located `${xpathFor_backToLocationsLinkInMobView}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_InHomePage}` becomes VISIBLE
