var toggle = document.getElementById('toggle');
var close = document.getElementById("close");
var modal = document.getElementById("header__modal");
toggle.onclick = function() {
    modal.style.display='block';
    close.style.display='flex';
    toggle.style.display='none';
};

close.onclick = function() {
    modal.style.display='none';
    close.style.display='none';
    toggle.style.display='flex';
}

