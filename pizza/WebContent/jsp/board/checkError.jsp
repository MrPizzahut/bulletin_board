<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title>password error</title>
  <link rel="stylesheet" href="/board/common/css/css.css" type="text/css">
  <script type="text/javascript">
    function ErrorMessage() {
      alert("you input the worng password.");
      history.back(-1);
    }
  </script>
</head>
  
  <body>
    <script>ErrorMessage()</script>
  </body>
</html>