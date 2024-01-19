<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body class="container">
<form:form action="/addNew" method="post" modelAttribute="nhanVienViewModel">
    <label class="form-label">Ma nhan vien:</label>
    <form:input path="maNhanVien" cssClass="form-control"/>
    <form:errors path="maNhanVien" cssClass="form-control"/>
    <br>
    <br>
    <label class="form-label">Ho ten:</label>
    <form:input path="hoTen" cssClass="form-control"/>
    <form:errors path="hoTen" cssClass="form-control"/>
    <br>
    <br>
    <label class="form-label">Dia chi:</label>
    <form:input path="diaChi" cssClass="form-control"/>
    <form:errors path="diaChi" cssClass="form-control"/>
    <br>
    <br>
    <label class="form-label">Gioi tinh:</label>
    <form:radiobutton path="gioiTinh" value="Nam" checked="Nam" />Nam
    <form:radiobutton path="gioiTinh" value="Nu"  />Nu
    <br>
    <br>
    <form:button type="submit" onclicl="return confirm('Ban co muon them nhan moi nay khong?')">Submit</form:button>
</form:form>
<table class="table">
    <thead>
      <tr>
          <td>STT</td>
          <td>Ma Nhan Vien</td>
          <td>Ho Ten</td>
          <td>Dia Chi</td>
          <td>Gioi Tinh</td>
          <td>Action</td>
      </tr>
    </thead>
    <tbody>
       <c:forEach items="${listNhanVien}" var="nhanVien" varStatus="stt">
           <tr>
               <td>${stt.index +1}</td>
               <td>${nhanVien.maNhanVien}</td>
               <td>${nhanVien.hoTen}</td>
               <td>${nhanVien.diaChi}</td>
               <td>${nhanVien.gioiTinh}</td>
               <td>
                   <a href="/detail?id=${nhanVien.maNhanVien}" class="btn btn-primary">Detail</a>
                   <a href="/delete?id=${nhanVien.maNhanVien}" class="btn btn-primary" onclick="return confirm('Ban co muon xoa nhan vien nay khong?')">Delete</a>
               </td>
           </tr>
       </c:forEach>
    </tbody>
</table>
</body>
</html>