<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
        .completebill {
    width: 370px;
    margin: 100px auto; 
    box-shadow: 1px 2px 5px gray;
}
           .wishdiv{
            border-bottom: 2px dashed gray;
           }
          .wishdiv div{
            display: flex;
          }
          .resdetails{
            justify-content: center;
          }
          .resdetails p{
            margin: 3px;
          }
   .cellnumber{
         margin-left: 15px;
         margin-right:60px ;
   }
   .contact p{
    margin-top: 2px;
   }
   .itemdetailsdiv, .totaldiv{
   width: 370px;
   
    border-bottom: 2px dashed gray;
   }
   .itemdiv{
    display:flex;
    justify-content: space-between;
   }
   .itemdiv p{
    margin-bottom: 10px;
    margin-top: 10px;
    margin-left: 20px;
    margin-right: 20px;
   }
   .wishdiv2 div{
    display: flex;
   }
   .wishdiv2{
    height: 80px;
    width:370px;
    align-content: center;
   }
  .downlbuttondiv{
    position:absolute;
    margin-top: 500px;
    margin-left:250px ;
   }
   .paybuttondiv{
    position: absolute;
    margin-top: 500px;
    margin-left: 420px;
}
.downlbutton, .paybutton{
  padding:10px 30px 10px 30px;
  border-radius: 3px;
  border-style: none;
   cursor: pointer;
  font-size: medium;
}
 .paybutton:hover{
	 box-shadow: 1px 2px 5px gray;
}
 .downlbutton:action{
 box-shadow: 1px 2px 5px gray;
 }
    </style>
    </head>
    <body>
    <div class="downlbuttondiv">
            <button class="downlbutton">download</button>
      </div>
      <form action="test">
      <div class="paybuttondiv">
        <button class="paybutton">payment done</button>
  </div>
 
      
      
<div class="completebill">
  <div class="wishdiv">
    <div class="resdetails"><p>ABC RESTORENT</p></div>
    <div class="resdetails"><p>lb Nagar Hyd</p></div> 
    <div class="contact"> <p class="cellnumber">call:2468961246</p>
        <p>GSTNO:454878411234567</p></div>
  </div>
  <div class="itemdetailsdiv">
  <c:forEach var="items" items="${orderslist}" varStatus="loop">
     <div class="itemdiv">  
          <p class="item"> ${items.getName()} ${items.getQuantity()}</p><p class="price">${items.getPrice() * items.getQuantity()}</p>  
      </div> 
   </c:forEach>
  </div>
  <div class="totaldiv">
    <div class="itemdiv">
         <p class="item">GST</p><p class="price">00</p>
    </div>
    <div class="itemdiv">
      <p class="item">GRANG TOTAL</p><p class="price">${totalcost}</p>
 </div>
</div>
  <div class="wishdiv2">
     <div  class="resdetails"><p>ABC.RETORENT</p></div>
     <div class="resdetails"><P>THANK YOU VISIT AGAIN</P></div>
  <div>
</div>
 </form>
    </body>
</html>

