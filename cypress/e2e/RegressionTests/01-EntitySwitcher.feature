Feature: 01-EntitySwitcher

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

    Scenario: With business test user, enabling business view in Admin Member Detail page allows user to login as a business user on the OLB portal
    #AdminPortal
     
      When user checked on the Enable Business View option
      And user clicks on the Update button
      Then user should be see the Member page
    #RegressionPlatfromWeb
      Given user launches the lafayette portal
      When user enters valid UserName and Password and clicks on Continue
      Then user should login successfully and navigate to Dashboard page
      And Business account dropdown should be visible on the dashboard page
     
    Scenario: With personals test user, disable business view in Admin Member Detail page allows user to login as a consumer on the OLB portal
      #AdminPortal
      When user unchecked on the Enable Business View option
      And user clicks on the Update button
      Then user should be see the Member page

      #RegressionPlatfromWeb
      Given user launches the lafayette portal
      When user enters valid UserName and Password and clicks on Continue
      Then user should login successfully and navigate to Dashboard page
      And Business account dropdown should not be visible on the dashboard page