Feature: 08-Realtime Cross Entity Transfer B to B

    Background: user launches the admin portal
        Given user launches the admin portal
        When user enters valid Email and Password and clicks on Sign in
        Then user should login successfully and navigate to home page
        And user should be able to see the Members option on the top manu bar
        When user clicks on the Members option
        Then user should be able to see the Members page
        When user searches specific member in the page
        Then user should be able to locate the member on the list of members
        When user clicks on the edit option of the searched member
        Then member details page should be loaded successfully
        And user should see the Enable Business View option in Member Details page
    
    Scenario: With business test user, Verify ability to do a realtime cross entity transfer and shows up on scheduled transfer page- B to B
        #AdminPortal
        When user checked on the Enable Business View option
        And user clicks on the Update button
        Then user should be able to see the Members page
        When user clicks on the Businesses option
        And user searches specific Businesses member in the page
        And user clicks on Edit option
        Then user should be able to see the Business Details page
        And user select the Risk Profile and Business Tier dropdown by default
        And user should be able to see the Permissions Management option on the top manu bar
		When user clicks on the Permissions Management option
        Then user should be redirected to Permissions Management page
        And user should be see the Default Business in the table
        When user click on the ellipsis menu of Default Business
        And user clicks on Edit option
        Then Edit Business Tier page should be displayed
        When user select the Enable businesses users to perform internal transfers between businesses accounts option under transfers section
        And user clicks on the Save button
        Then user should be redirected to Permissions Management page
        

        #RegressionPlatfromWeb
        Given   user launches the lafayette portal
        When    user enters valid UserName and Password and Clicks on Continue
        Then    user should login successfully and navigate to Dashboard page
        Given   user clicks on Transfer Money tab and navigated to Select Transfer Type - Select Transfer Type Page
        When    user selects Between Your Business Account option
        Then    user should be navigated to Transfer Money - Between Your Accounts page
        When    user selects Sender Account and Recipient Account and clicks on Continue button
        And     user enters Amount, Date, Add memo, Frequency, End Date and clicks on Continue Button
        Then    user should be navigated to Review Transfer page
        When    user clicks on Continue Button
        Then    a success message should be displayed and Application navigates to Dashboard Page
        And     the current balance of both the Accounts should get updated on the Dashboard Page
        When    user navigates to Transaction History Page of Sender Account
        Then    the transaction should present on the transaction history
        And     the memo should be visible on the specific transaction
        And     the current balance and running balance should match exactly

    Scenario: With personals test user, Verify ability to do a realtime cross entity transfer and shows up on scheduled transfer page- B to B
        #AdminPortal
        When user unchecked on the Enable Business View option
        And user clicks on the Update button
        Then user should be see the Member page

        #RegressionPlatfromWeb
        Given user launches the lafayette portal
        When user enters valid UserName and Password and clicks on Continue
        Then user should login successfully and navigate to Dashboard page
        And Business account dropdown should not be visible on the dashboard page