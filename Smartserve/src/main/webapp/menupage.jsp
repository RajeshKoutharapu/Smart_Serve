<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.entirepage{
	display: flex;
	height: 1700px;
	width: 100%;
	border-style:solid;
	border-color: aqua;
	}
	.staterheading{
	display: inline-block;
	}
	.vegdiv{
	width: 300px;
	}
	.nonvegdiv{
	width: 300px;
	}
	.itemtitle{
	      height: 50px;
	      	width: 100%;
	      display: flex;
	      border-style:solid;
	      border-color: gray;
	      border-width: 1px;
	      align-items: center;
	      justify-content: center;
	     }
	     .itemtitle p{
	     }
	.itemdiv{
	display:flex;
	height: 50px;
	width: 100%;
	border-style:solid;
	border-color: gray;
	border-width: 1px;
	align-items: center;
	
	}
	.itemdiv p{
	display: inline;
	padding-left: 20px
	}
	.textbox{
	   width: 30px;
	   height: 25px
	}
	
</style>
</head>
<body>
<form action="total" method="post">
<div class="entirepage">
      <div class="staterheading">
      <p>STATERS</p>
      </div>
     <div class="vegdiv">
         <div class="itemtitle">
              <p>VEG</p>
         </div>
      <c:forEach var="items" items="${vegstatersdata}" varStatus="loop">
    <div class="itemdiv">
        <p>${items.itemname}</p>  
        <p>${items.price}</p> 
        <input class="textbox" type="number" name="vegstquantity${loop.index}" min="1" max="10">
        <input type="hidden" name="vegstitemname${loop.index}" value="${items.itemname}">
        <input type="hidden" name="vegstprice${loop.index}" value="${items.price}">
    </div>
</c:forEach>
          <div class="itemtitle">
              <p>VEG-MAINCOURSE</p>
          </div>
    <c:forEach var="items" items="${vegmaincoursedata}" varStatus="loop">
     <div class="itemdiv">
        <p>${items.itemname}</p>  
        <p>${items.price}</p> 
        <input class="textbox" type="number" name="Vegmaincoursequantity${loop.index}" min="1" max="10">
        <input type="hidden" name="Vegmaincourseitemname${loop.index}" value="${items.itemname}">
        <input type="hidden" name="Vegmaincourseprice${loop.index}" value="${items.price}">
    </div>
</c:forEach>

    </div>
   <div class="nonvegdiv">
           <div class="itemtitle">
              <p>NON VEG</p>
         </div>
       <c:forEach var="items" items="${nonvegstatersdata}" varStatus="loop">
          <div class="itemdiv">
            <p>${items.itemname}</p>  
             <p>${items.price}</p> 
              <input class="textbox"type="number" name="nonvegstquantity${loop.index}" min="1" max="10">
               <input type="hidden" name="nonvegstitemname${loop.index}" value="${items.itemname}">
               <input type="hidden" name="nonvegstprice${loop.index}" value="${items.price}">
          </div>
       </c:forEach>
        <div class="itemtitle">
              <p>NON VEG-MAIN COURSE</p>
         </div>
          <c:forEach var="items" items="${nonvegmaincoursedata}" varStatus="loop">
          <div class="itemdiv">
            <p>${items.itemname}</p>  
             <p>${items.price}</p> 
              <input class="textbox"type="number" name="nonvegmaincoursequantity${loop.index}" min="1" max="10">
               <input type="hidden" name="nonvegmaincourseitemname${loop.index}" value="${items.itemname}">
               <input type="hidden" name="nonvegmaincourseprice${loop.index}" value="${items.price}">
          </div>
       </c:forEach>
         
         
    </div>
</div>
 <button>generate bill</button>

</form>

</body>
</html>