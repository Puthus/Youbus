//    Side Navbar

$(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
    });
});

// Top navbar

function Function() {
    var x = document.getElementById("Topnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

// Active nav element

$(document).ready(function () {
    var url = window.location;
    $('.sidebar').find('.active').removeClass('active');
    $('.sidebar li a').each(function () {
        if (this.href == url) {
            $(this).parent().addClass('active');
        }
    });
});

            
// Alert

$(document).ready(function () {
    $().alert('close');
});