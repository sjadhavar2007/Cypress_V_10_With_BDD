Feature: TC08-CreateEditRole-Unable To Create Duplicate Consumer Tier
Background: Login to admin Portal
		Given user launches the admin portal

 @BusinessBankingRegression
	Scenario: Name field should be compulsory and User should not be able to add the same name as existing role for Consumer tier
		When user enters valid Email and Password for Reseller and Clicks on Sign in
		Then user should login successfully and navigate to home page
        And user should be able to see the Permissions Management text in the page
		When user clicks on the Permissions Management text
        And user should be able to see the Permissions Management page displayed
        When user click on the Feature Tiers text
        And user should view default badge with its type status
        Then user should view Add Consumer Tier and Add Business Tier buttons
        And user clicks on the Add Consumer Tier button
        Then user should be redirected to Create Consumer Tier page
        When user enters existing role name for Consumer tier
        And user clicks on the Create button
        Then user should see the error message
        When user enters valid role name for Consumer tier
        And user clicks on the Create button
        And user should be able to see the Permissions Management page displayed
        Then user should view the New added Consumer Tier badge