/**
 * 
 */
  let sidebar = document.querySelector(".sidebar");
  let closeBtn = document.querySelector("#btn");
      let searchBtn = document.querySelector(".bx-search");
    
      closeBtn.addEventListener("click", ()=>{
        sidebar.classList.toggle("open");
        menuBtnChange();//calling the function(optional)
      });
    
      searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
        sidebar.classList.toggle("open");
        menuBtnChange(); //calling the function(optional)
      });
    
      // following are the code to change sidebar button(optional)
      function menuBtnChange() {
       if(sidebar.classList.contains("open")){
         closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
       }else {
         closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
       }
      }
      
      function myFunction() {
    	    var input, filter, ul, li, a, i, txtValue;
    	    input = document.getElementById("myInput");
    	    filter = input.value.toUpperCase();
    	    ul = document.getElementById("myUL");
    	    li = ul.getElementsByTagName("li");
    	    for (i = 0; i < li.length; i++) {
    	        a = li[i].getElementsByTagName("a")[0];
    	        txtValue = a.textContent || a.innerText;
    	        if (txtValue.toUpperCase().indexOf(filter) > -1) {
    	            li[i].style.display = "";
    	        } else {
    	            li[i].style.display = "none";
    	        }
    	    }
    	}
    	
    	var mybutton = document.getElementById("myBtn");   

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}