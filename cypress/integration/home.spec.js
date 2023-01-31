describe('example to-do app', () => {

  it('visits the home page', () => {
    cy.visit('/')
  })

  it("There are products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

})
