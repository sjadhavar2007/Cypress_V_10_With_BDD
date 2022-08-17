Feature: TC04-CreateEditRole-View Add Consumer Tier and Add Business Tier buttons

Background: Login to admin Portal
		Given user launches the admin portal

 @BusinessBankingRegression
	Scenario: User should get the following options 1. Add Consumer Tier 2. Add Business Tier 
		When user enters valid Email and Password for Reseller and Clicks on Sign in
		Then user should login successfully and navigate to home page
        And user should be able to see the Permissions Management text in the page
		When user clicks on the Permissions Management text
        And user should be able to see the Permissions Management page displayed
        When user click on the Feature Tiers text
        Then user should view default badge with its type status
        Then user should view Add Consumer Tier and Add Business Tier buttons