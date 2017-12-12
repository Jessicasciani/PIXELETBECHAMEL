const link = document.getElementById("prestations");
console.log(link);

link.addEventListener("mouseenter", function() {
  document.getElementById("navbar-prestations").classList.add("opacity");
  document.getElementById("navbar-portfolio").classList.remove("opacity-port");
});

const wrapper = document.getElementById("wrapper");

wrapper.addEventListener("mouseleave", function() {
  document.getElementById("navbar-prestations").classList.remove("opacity");
  document.getElementById("navbar-portfolio").classList.remove("opacity-port");
});

const qui = document.getElementById("qui");
console.log(qui);

qui.addEventListener("mouseenter", function() {
  document.getElementById("navbar-prestations").classList.remove("opacity");
});

const portfolio = document.getElementById("portfolio");

portfolio.addEventListener("mouseenter", function() {
  document.getElementById("navbar-prestations").classList.remove("opacity");
  document.getElementById("navbar-portfolio").classList.add("opacity-port");
});


const studio = document.getElementById("studio");

studio.addEventListener("mouseenter", function() {
  document.getElementById("navbar-portfolio").classList.remove("opacity-port");
});

