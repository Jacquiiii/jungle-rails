describe("navigate from the home page to the product detail page by clicking on a product", () => {

  it("visits the home page", () => {
    cy.visit("/")
  })

  it("There are products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There are 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });

  it("should navigate to products/id page", () => {
    cy.contains("Giant Tea").click()
  });

})