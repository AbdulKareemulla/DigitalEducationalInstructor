
//TextBox should allow only Numerics
function numeric(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && ((charCode >= 48 && charCode <= 57) || charCode == 46))
        return true;
    else {
        alert('Please Enter Numeric values.');
        return false;
    }
}

//Validate EmailID

function ValidateEmail(mail) {
    //var ctrl = document.getElementById(mail);
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail)) {
        return (true)
    }
    alert("You have entered an invalid email address!")
    return (false)
}  

//clear form controls

