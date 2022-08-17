Feature: TC05-CreateEditRole-click on Add Consumer Tier and redirect to Create Consumer Tier page

Background: Login to admin Portal
		Given user launches the admin portal

 @BusinessBankingRegression
	Scenario: Clicking on Add Consumer tier should redirect to Create Consumer Tier Page
		When user enters valid Email and Password for Reseller and Clicks on Sign in
		Then user should login successfully and navigate to home page
        And user should be able to see the Permissions Management text in the page
		When user clicks on the Permissions Management text
        And user should be able to see the Permissions Management page displayed
        When user click on the Feature Tiers text
        Then user should view Add Consumer Tier and Add Business Tier buttons
        And user clicks on the Add Consumer Tier button
        Then user should be redirected to Create Consumer Tier page