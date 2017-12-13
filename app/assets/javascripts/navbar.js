var link = document.getElementById("prestations");
console.log(link);

link.addEventListener("mouseenter", function() {
  document.getElementById("navbar-prestations").classList.add("opacity");
  document.getElementById("navbar-portfolio").classList.remove("opacity-port");
});

var wrapper = document.getElementById("wrapper");

wrapper.addEventListener("mouseleave", function() {
  document.getElementById("navbar-prestations").classList.remove("opacity");
  document.getElementById("navbar-portfolio").classList.remove("opacity-port");
});

var qui = document.getElementById("qui");
console.log(qui);

qui.addEventListener("mouseenter", function() {
  document.getElementById("navbar-prestations").classList.remove("opacity");
});

var portfolio = document.getElementById("portfolio");

portfolio.addEventListener("mouseenter", function() {
  document.getElementById("navbar-prestations").classList.remove("opacity");
  document.getElementById("navbar-portfolio").classList.add("opacity-port");
});


var studio = document.getElementById("studio");

studio.addEventListener("mouseenter", function() {
  document.getElementById("navbar-portfolio").classList.remove("opacity-port");
});

