/// <reference types="Cypress" />
import loginPage from '../support/pageObjects/LoginPage';
import commFunc from '../support/commonUtilityMethod/commFunc';


Cypress.Commands.add("login", (userName, password) => {
  loginPage.getUserName().type(userName)
  loginPage.getPassword().type(password)
  loginPage.getRememberDevice().click()
  loginPage.getContinueBtn().click()
})


Cypress.Commands.add("getURL", () => {
  commFunc.getURL()
})

Cypress.Commands.add("getUserName", (RoleName) => {
  commFunc.getUserName(RoleName)
})

Cypress.Commands.add("getPassword", (RoleName) => {
  commFunc.getPassword(RoleName)
})
