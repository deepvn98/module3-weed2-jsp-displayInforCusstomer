<%@ page import="java.util.List" %>
<%@ page import="model.Client" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24/5/2021
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    List<Client> clientsList = new ArrayList<>();
    Client client1 = new Client("Ngân Khánh","1992/05/10","Bình Định","https://image.phunuonline.com.vn/news/2019/20191015/fckimage/167026_ntk-lam-gia-khang2-151316316.jpg");
    Client client2 = new Client("Ngân Khánh","1985/10/05","Bình Định","https://image.phunuonline.com.vn/news/2019/20191015/fckimage/167026_ntk-lam-gia-khang2-151316316.jpg");
    Client client3 = new Client("Ngân Khánh","1985/10/05","Bình Định","https://image.phunuonline.com.vn/news/2019/20191015/fckimage/167026_ntk-lam-gia-khang2-151316316.jpg");
    Client client4 = new Client("Ngân Khánh","1985/10/05","Bình Định","https://image.phunuonline.com.vn/news/2019/20191015/fckimage/167026_ntk-lam-gia-khang2-151316316.jpg");
    Client client5 = new Client("Ngân Khánh","1985/10/05","Bình Định","https://image.phunuonline.com.vn/news/2019/20191015/fckimage/167026_ntk-lam-gia-khang2-151316316.jpg");
    clientsList.add(client1);
    clientsList.add(client2);
    clientsList.add(client3);
    clientsList.add(client4);
    clientsList.add(client5);
    request.setAttribute("danhsach",clientsList);
  %>
  <table border="1" width="100%"  >
    <tr>
      <th>name</th>
      <th>Age</th>
      <th>Address</th>
      <th>Picter</th>
    </tr>
<c:forEach items="${danhsach}" var="a">
    <tr>
      <td>${a.name}</td>
      <td>${a.age}</td>
      <td>${a.address}</td>
      <td><img src="${a.img}" alt="" width="150px" height="200px"></td>
    </tr>
</c:forEach>
  </table
  </body>
</html>
