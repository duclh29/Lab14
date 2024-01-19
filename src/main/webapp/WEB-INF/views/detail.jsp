<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body class="container">
<form action="/update" method="post">
    <div class="mb-3">
        <label class="form-label">Ma nhan vien:</label>
        <input class="form-control" value="${nhanVien.maNhanVien}" name="maNhanVien">
    </div>
    <div class="mb-3">
        <label class="form-label">Ho ten:</label>
        <input class="form-control" value="${nhanVien.hoTen}" name="hoTen">
    </div>
    <div class="mb-3">
        <label class="form-label">Dia chi:</label>
        <input class="form-control" value="${nhanVien.diaChi}" name="diaChi">
    </div>
    <div class="mb-3">
        <label class="form-label">Gioi tinh:</label>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="gioiTinh" value="Nam" <c:if test="${nhanVien.gioiTinh == 'Nam'}">checked</c:if>>
            <label class="form-check-label">Nam</label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="gioiTinh" value="Nu" <c:if test="${nhanVien.gioiTinh == 'Nu'}">checked</c:if>>
            <label class="form-check-label">Nu</label>
        </div>
    </div>
    <button type="submit" class="btn btn-primary" onclick="return confirm('Ban co muon update nhanvien nay khong?')">Submit</button>
</form>
</body>
</html>