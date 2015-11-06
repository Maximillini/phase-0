// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: D].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").className += " done";



// Release 1:
document.getElementById("release-1").style.display = "none";



// Release 2:
document.querySelector("h1").innerHTML="I completed release 2.";



// Release 3:
document.getElementById("release-3").style.backgroundColor="#955251";



// Release 4:

var large = document.querySelectorAll("p.release-4");

for (var i = 0; i < large.length; i++) {
    large[i].style.fontSize = "2em";
} 


// Release 5:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

/*Reflection:

What did you learn about the DOM?

I learned that DOM is not too difficult to manipulate if you know the proper JS syntax.
I also learned that 

What are some useful methods to use to manipulate the DOM?

*/