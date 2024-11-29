var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1;
        setTimeout(showOutdoor, 2000); // Delay before showing the outdoor section
    }    
    slides[slideIndex-1].style.display = "block";  
    setTimeout(showSlides, 3000); // Change image every 2 seconds
}

function showOutdoor() {
    document.querySelector('.outdoor').style.top = "0";
}