<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Hotel Legend's Kingdom</title>
   <link href="logo.jpg" rel ="icon" type= "image/icon">
   
<style>


h2{
  color: #000;
  font-size: 35px;
  font-weight: 250;
  font-variant: small-caps;
}
    /**/
.container{
  max-width: 45000px;
  margin: 40px 40px 60px 40px;
  background: #fff;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  padding: 40px 40px;
  border-radius: 12px;
  /* transform: scale(); */
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: black;
}
.form .input-field{
    position: relative;
    height: 50px;
    width: 100%;
    margin-top: 30px;
}

.input-field input{
    position: absolute;
    height: 100%;
    width: 100%;
    padding: 0 35px;
    border: none;
    outline: none;
    font-size: 16px;
    border-bottom: 2px solid #ccc;
    border-top: 2px solid transparent;
    transition: all 0.2s ease;
}

.input-field input:is(:focus, :valid){
    border-bottom-color: #F5DF7C;
}

.input-field i{
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    color: #999;
    font-size: 23px;
    transition: all 0.2s ease;
}

.form .submit input{
    border: none;
    color: #fff;
    font-size: 17px;
    font-weight: 500;
    letter-spacing: 1px;
    border-radius: 9px;
    background-color: #00687a;
    cursor: pointer;
    transition: all 0.3s ease;
}

.submit input:hover{
    background-color: #265df2;
}

input.submit {
  border-radius: 6px;
  border: 1px solid #006478;
  background-color: #006478;
  color: white;
  padding: 5px 20px;
  font-size: 12px;
  cursor: pointer;
}
.imge{
  boder-radius:12px;
}
</style>

</head>
<body>
   <jsp:include page="main/header.jsp"/>
   
   <div class="container">
      <div class="forms">
          <div class="form login">
		     <span class="title">Hotel Legend's Kingdom</span>
		     <div align="center" class ="imge"><br>
		      <img alt="" src="images/home.jpg">
		     </div><br>
             <p>The Hotel Legend's Kingdom is a new one.</p>
          </div>
       </div>
   </div>
          
   <jsp:include page ="main/footer.jsp"/>
</body>
</html>