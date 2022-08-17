Feature: TC01-CreateEditRole-Enable Permissions Management 

	Background: Login to admin Portal
		Given user launches the admin portal

   @BusinessBankingRegression
	Scenario: Permission Management option should be visible on the admin panel once Enable Permissions Management set to true in the App Settings
		When user enters valid Email and Password for Reseller and Clicks on Sign in
		Then user should login successfully and navigate to home page
        And user should be able to see the Manage Institution text in the page
		When user clicks on the Manage Institution text
		And user should be open dropdown with the list of institutions
		And user click on the App Settings from the dropdown
		Then user should be navigated to the App Settings page
		When user should be Search Enable Permissions Management and make it true
		And user Click on Save button and add settings
		And user clicks on the Sign Out button
		Then user should be successfully sign out from the application
		When user enters valid Email and Password for Reseller and Clicks on Sign in
		Then user should login successfully and navigate to home page
		And user should be able to see the Permissions Management text in the page
		When user clicks on the Permissions Management text
        Then user should be able to see the Permissions Management page displayed