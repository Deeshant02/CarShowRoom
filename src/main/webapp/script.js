function register(){	

    document.getElementById("resister").style.background = "#dc3545";
    document.getElementById("resister").style.color = "white";

    let req = new XMLHttpRequest();

    req.onreadystatechange = function(){
        // call whenever statechange

        if(this.readyState == 4 && this.status==200){
            // console.log(this.responseText);
            document.getElementById("main").innerHTML = this.responseText;
        }
    };
    
    req.open("GET","webPages/resisterPage/resister.jsp");

    req.send();
};

function showPass(){
    let x = document.getElementById("exampleInputPassword1");
    if(x.type === "password"){
        x.type = "text";
    }
    else{
        x.type = "password"
    }
}