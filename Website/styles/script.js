window.addEventListener('DOMContentLoaded', init, false);

function rollover(my_image) {
    my_image.src = 'images/pittEmblem.png';
}
function mouseaway(my_image) {
    my_image.src = "images/SigmaTauDeltaEmblem.jpg";
}
function init() {
    var buttons = document.getElementsByTagName("button")
    
    var button1 = buttons[0]
    button1.addEventListener('click', show_hide, false);
}
function show_hide() {
    if (document.getElementById('toggle').style.display != "none") {
        document.getElementById('toggle').style.display = "none";
    } else {
        document.getElementById("toggle").style.display = "block";
    }
}
