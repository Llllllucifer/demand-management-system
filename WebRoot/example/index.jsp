<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Example - example-http-service</title>
  

<script src="<%=basePath %>js/angular/angular1.2.min.js"></script>
  <script src="script.js"></script>
  

  
</head>
<body ng-app="httpExample">
  <div ng-controller="FetchController">
  <select ng-model="method" aria-label="Request method">
    <option>GET</option>
    <option>JSONP</option>
  </select>
  <input type="text" ng-model="url" size="80" aria-label="URL" />
  <button id="fetchbtn" ng-click="fetch()">fetch</button><br>
  <button id="samplegetbtn" ng-click="updateModel('GET', 'http-hello.html')">Sample GET</button>
  <button id="samplejsonpbtn"
    ng-click="updateModel('JSONP',
                  'https://angularjs.org/greet.php?name=Super%20Hero')">
    Sample JSONP
  </button>
  <button id="invalidjsonpbtn"
    ng-click="updateModel('JSONP', 'https://angularjs.org/doesntexist')">
      Invalid JSONP
    </button>
  <pre>http status code: {{status}}</pre>
  <pre>http response data: {{data}}</pre>
</div>
</body>
</html>