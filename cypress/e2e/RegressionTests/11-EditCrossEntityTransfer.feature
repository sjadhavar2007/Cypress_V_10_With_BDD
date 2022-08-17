Feature: TC11-Edit Cross Entity Scheduled Transfer

    Background: Launch the admin Portal
        Given user should launch the Admin Portal
        When user enters valid Email and Password for Reseller and clicks on Sign in
        Then user should login successfully and navigate to Member page
        When user search the valid specific member UserName and click on the search option
        Then user should see the specific member in the search result
        When user click on the Edit button
        Then user should see the Edit member details page

    Scenario: Verify ability to Edit scheduled cross entity transfer with Business User
        #AdminPortal
        When user checks the Enable business view checkbox
        And user click on update button
        Then user should redirect to the member page
        And user should click On Business radio button
        When user search the valid specific member UserName and click on the search option
        Then user should see the specific member in the search result
        When user click on the Edit button
        Then user should see the Edit member details page
        And user should see the values in Business tier dropdown field
        When user should click on Permission Management option from the top menu bar
        Then user should be navigated to the Permission Management screen
        And user should choose  the desired permission from the list
        When user click on the Edit button
        Then user should see the Edit Permission details page
        And user should check the toggle button for B to B permissions
        And user should click on save button
        Then user should redirect to the Permission management page
        #RegressionPlatformWeb
        Given user launches the lafayette portal
        When user enters valid UserName and Password and clicks on Continue
        Then user should login successfully and navigate to Dashboard page
        And user should see the dropdown to select business accounts in the Dashboard Page
        When user selects any specific business account from the dropdown
        Then the specific business accounts should get loaded successfully
        When user clicks on My Finance tab on the top menu bar
        Then user should be navigated to My Finance page & click on Transfer option
        When user navigated to Transfer page and click on Scheduled tab
        And user should navigated to scheduled transfer page
        And user searches the specific scheduled transfer
        And user should hover on the ellipsis menu
        And user clicks on Edit option
        Then edit scheduled transfer page should be displayed
        When user selects new value from the fromAccountdropdown, toAccountdropdown
        And user edits the transfer amount, frequency, date
        And user clicks on save button
        Then the scheduled transfer details should be updated successfully

    Scenario: Verify ability to Edit scheduled cross entity transfer with Non-Business User
        When user unchecks the Enable business view checkbox
        And user click on update button
        Then user should redirect to the member page
        #RegressionPlatformWeb
        Given user launches the lafayette portal
        When user enters valid UserName and Password and clicks on Continue
        Then user should login successfully and navigate to Dashboard page
        And user should not be able to see the dropdown to select business accounts in the Dashboard Page