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
    button1.addEventListener('click', show_hide1, false);
}
function show_hide() {
    if (document.getElementById('toggle').style.display != "none") {
        document.getElementById('toggle').style.display = "none";
    } else {
        document.getElementById("toggle").style.display = "block";
    }
    /*var rec = document.getElementById('recMo');
    var rev = document.getElementById('revMo');
    
    rec.onmouseover = function () {
        document.getElementById('popUp1').style.display = 'block';
    }
    rec.onmouseout = function () {
        document.getElementById('popUp1').style.display = 'none';
    }
    
    rev.onmouseover = function () {
        document.getElementById('popUp2').style.display = 'block';
    }
    rev.onmouseout = function () {
        document.getElementById('popUp2').style.display = 'none';
    }*/
}