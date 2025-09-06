<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registration Form</title>
    <style>
        h2{
            margin-left: 40px;
        }
        div {
            margin: 10px 0;
        }
        input[type="text"], input[type="password"], select {
            width: 26%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
        }
        button {
            width: 26%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .row {
            display: flex;
            gap: 30px;
        }
        .row input {
            width: 12%;
        }
        .birthday select {
            width: 8%;
            display: inline-block;
            margin-right: 5px;
        }
    </style>
</head>
<body>
<h2>User Registration Form</h2>
<form action="registration-form" method="POST">
    <div class="row">
        <input type="text" name="first-name" placeholder="First Name">
        <input type="text" name="last-name" placeholder="Last Name">
    </div>
    <div>
        <input type="text" name="your-email" placeholder="Your Email">
    </div>
    <div>
        <input type="text" name="re-email" placeholder="Re-enter Email">
    </div>
    <div>
        <input type="password" name="password" placeholder="New Password">
    </div>
    <div class="birthday">
        <div>Birthday</div>
        <div>
            <select name="dayOfBirth" class="dob-select">
                <option value="">Day</option>
                <% for(int i=1; i<=31; i++) { %>
                <option value="<%=i%>"><%=i%></option>
                <% } %>
            </select>
            <select name="monthOfBirth" class="dob-select">
                <option value="">Month</option>
                <option value="Jan">Jan</option><option value="Feb">Feb</option>
                <option value="Mar">Mar</option><option value="Apr">Apr</option>
                <option value="May">May</option><option value="Jun">Jun</option>
                <option value="Jul">Jul</option><option value="Aug">Aug</option>
                <option value="Sep">Sep</option><option value="Oct">Oct</option>
                <option value="Nov">Nov</option><option value="Dec">Dec</option>
            </select>
            <select name="yearOfBirth" class="dob-select">
                <option value="">Year</option>
                <%
                    int currentYear = java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);
                    for(int y=currentYear; y>=1980; y--) {
                %>
                <option value="<%=y%>"><%=y%></option>
                <% } %>
            </select>
        </div>
    </div>
    <div>
        <input type="radio" name="gender" value="Female">Female
        <input type="radio" name="gender" value="Male">Male
    </div>
    <div>
        <button>Sign Up</button>
    </div>
</form>
</body>
</html>