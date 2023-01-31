describe("can signup successfully", () => {

  beforeEach(() => {
    cy.request("GET", "/tests/db/reset")
  })

  it("visits the home page", () => {
    cy.visit("/")
  })

  it("finds the Signup button, clicks on it, is directed to to the Signup form", () => {
    cy.contains("Signup").click()

    cy.get("#user_first_name").type("James")
    cy.get("#user_last_name").type("Smith")
    cy.get("#user_email").type("t@test.com")
    cy.get("#user_password").type("Smith")
    cy.get("#user_password_confirmation").type("Smith")

    cy.get(".btn").click()

    cy.get(".nav-link").contains("Logout")
  })

})