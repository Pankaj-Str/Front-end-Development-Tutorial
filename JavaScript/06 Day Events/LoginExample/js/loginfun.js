function login(){

    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;

    if(username == "admin@p4n.in" && password=="p4n.in"){

        window.open("welcome.html");

    }else{

        alert("try again ....");
    }


}