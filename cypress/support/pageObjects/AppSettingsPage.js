///<reference types="Cypress" />

class AppSettingsPage{
    static AllTabel(){
        return cy.get('form.form-horizontal table')
    }
    static getTabelData(){
        return this.AllTabel().find('tbody').find('tr')
    }
    static getSaveBtn(){
        return cy.get('button').should('be.visible').contains('Save')
    }
    static getAddSettings(){
        return cy.get('button').should('be.visible').contains('Add Settings')
    }
}
export default AppSettingsPage;