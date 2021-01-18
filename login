<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
      *{ 
    margin: 0%;
    padding: 0%;
}
body{
    background-color: #F2F2F2;
}
.Myheader{

    width: 100%;
    height: 60px;
    background-color: black;
    color: white; 
  
}
.Myheader span{
line-height: 60px;

}
.login{
    width: 100%;
height: 100px;
display: flex;
justify-content: center;
align-items: center;
margin-top: 300px;

}
.card{ 
    width: 300px;
    
     box-shadow: 1px 1px 1px 0px grey, -0px -1px 5px 0px white;
     overflow: hidden;
     border-radius: 10px;}
     .card  input,button{
    justify-content: space-between;
    outline: none;
border: none;
}
.card button{
    
    background-color: black;
    color: white;
    padding:10px;
    width: 30%;
    border-radius: 10px;
    margin: 10px;
    margin-left: 100px;
    
  
    
}
    .card input{
        padding: 8px 0px 8px 9px;
 width: 80%;
 box-shadow: 1px 1px 1px 0px grey, -0px -1px 2px 0px white;
 background-color: #F2F2f2 ;
 margin-top: 10px;
 margin-left: 15px;
 
    }
.login p{
    text-align: center;
    font-weight: bold;
    margin-bottom: 15px;
}

.login{
    flex-direction: row;
    flex-wrap: wrap;
    width: 70%;
	margin: auto;
	display: flex;
    justify-content: space-around;
    margin-top: 100px;
    margin-right: 30px;
}

    
    .card span{
        
        margin: 8px;
        font-family: 'Courier New', Courier, monospace;

    }
    </style>
</head>
<body>
    <header>
        <div class="Myheader">
       <span> Github.</span>
        </div>
        </header>
        <main class="login">
            <div class="card"> 
                <p>login.</p>
          
           
                <span>username</span>  <br>
                <input type="text" placeholder="username" id="inp1"> <br>
                <span >password</span> <br>
                <input type="password" placeholder="password" id="inp2"> <br>
              
                
                    <button id="btn"> join</button> 
                
              
            </div>

        </main>
        <script>
            
            const inpusername = document.getElementById("inp1");
            const inppassword = document.getElementById("inp2");
            const inprepassword = document.getElementById("inp3");
            const Mybtn = document.getElementById("btn");
            Mybtn.onclick = function(){
                const username = inpusername.value;
                const password = inppassword.value;
                const myobj = { name:username, password:password};
                const my_obj= JSON.stringify(myobj);
                var obj_my = JSON.parse(localStorage.getItem("myobj"));
                console.log(obj_my);
                if(username==obj_my.name&& password==obj_my.password){
                    window.location.href = 'index.html';
                }
                else{
                    
                    window.location.href = 'index1.html';
                }
               
                
                
            
            }
            

        </script>
</body>
</html>

