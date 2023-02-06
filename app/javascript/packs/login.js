function setup(){
    document.getElementById('create-page').style.display = "none";
}
function loginButton(){
    document.getElementById('create-page').style.display = "none";
    document.getElementById('login-page').style.display = "block";
}
function createButton(){
    document.getElementById('login-page').style.display = "none";
    document.getElementById('create-page').style.display = "block";
}