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
    
    
    function show_hide() {
        if (document.getElementById('toggle').style.display != "none") {
            document.getElementById('toggle').style.display = "none";
        } else {
            document.getElementById('toggle').style.display = "block";
        }
    }
    
    var button2 = buttons[0]
    button2.addEventListener('click', show_hide1, false);
    var button3 = buttons[1]
    button3.addEventListener('click', show_hide2, false);
    
    function show_hide1() {
        if (document.getElementById('toggle1').style.display != "none") {
            document.getElementById('toggle1').style.display = "none";
        } else {
            document.getElementById('toggle1').style.display = "block";
        }
    }
    function show_hide2() {
        if (document.getElementById('toggle2').style.display != "none") {
            document.getElementById('toggle2').style.display = "none";
        } else {
            document.getElementById('toggle2').style.display = "block";
        }
    }
}