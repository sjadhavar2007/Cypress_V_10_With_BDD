///<reference types="Cypress" />

class CreateConsumerTierPage{
    static enterName(){
        return cy.get('#name')
    }
    static clickCreateButton(){
        return cy.get('input[type="submit"]')
    }
    static getErrorMessage(){
        return cy.get('.field-validation-error')
    }
}
export default CreateConsumerTierPage;