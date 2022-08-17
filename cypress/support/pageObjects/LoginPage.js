class LoginPage {

    static getSignInpage() {
        return cy.get('h2.form-signin-heading')
    }
    
    static getUserName() {
        return cy.get('#Email')
    }

    static getPassword() {
        return cy.get('#Password')
    }

    static getRememberDevice() {
        return cy.get('label[for="RememberMe"]')

    }

    static getContinueBtn() {
        return cy.get('button[type="submit"]')
    }
    

}

export default LoginPage;