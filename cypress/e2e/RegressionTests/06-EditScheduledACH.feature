Feature: 06-Edit scheduled ACH

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
      
    Scenario: With business test user, Verify ability to edit scheduled ACH transfer and save sticks.
        #AdminPortal
        When user checked on the Enable Business View option
        And user clicks on the Update button
        Then user should be see the Member page
        #RegressionPlatfromWeb
        Given   user launches the lafayette portal
        When    user enters valid UserName and Password and Clicks on Continue
        Then    user should login successfully and navigate to Dashboard page
        When    user clicks on My Finance tab in Dashboard Page
        And     user clicks on Transfers tile in My Finance Page
        And     user clicks on Scheduled tab in My Finance Page
        Then    the list of all scheduled transfer accounts should be displayed
        Given   user searches a specific scheduled transfer account and hovers on ellipsis menu
        When    user clicks on Edit option
        Then    edit scheduled transfer page should be displayed
        When    user selects new value from the fromAccountdropdown, toAccountdropdown
        And     user edits the transfer amount, frequency, date
        And     user clicks on save button
        Then    the scheduled transfer details should be updated successfully

    Scenario: With personals test user, Verify ability to edit scheduled transfer and save sticks
        #AdminPortal
        When user unchecked on the Enable Business View option
        And user clicks on the Update button
        Then user should be see the Member page
        #RegressionPlatfromWeb
        Given   user launches the lafayette portal
        When    user enters valid UserName and Password and Clicks on Continue
        Then    user should login successfully and navigate to Dashboard page
        When    user clicks on My Finance tab in Dashboard Page
        And     user clicks on Transfers tile in My Finance Page
        And     user clicks on Scheduled tab in My Finance Page
        Then    the list of all scheduled transfer accounts should be displayed
        Given   user searches a specific scheduled transfer account and hovers on ellipsis menu
        When    user clicks on Edit option
        Then    edit scheduled transfer page should be displayed
        When    user selects new value from the fromAccountdropdown, toAccountdropdown
        And     user edits the transfer amount, frequency, date
        And     user clicks on save button
        Then    the scheduled transfer details should be updated successfully