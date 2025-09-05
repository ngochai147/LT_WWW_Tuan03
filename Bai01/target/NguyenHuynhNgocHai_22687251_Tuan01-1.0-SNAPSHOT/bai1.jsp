<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Student Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #a7d9f0;
            margin: 0;
            padding: 30px 40px;
            font-size: 13px;
            color: #000;
        }
        form {
            width: 720px;
            margin: 0 auto;
            border: solid 1px;
            padding: 10px;
            background-color: #a7d9f0;
        }
        table.form-table {
            width: 100%;
            border-collapse: collapse;
        }
        table.form-table td {
            padding: 5px 5px 3px 5px;
            vertical-align: middle;
        }
        table.form-table td.label {
            width: 160px;
            font-weight: normal;
        }
        input[type="text"],
        input[type="email"],
        select,
        textarea {
            font-size: 13px;
            padding: 2px 5px;
            border: 1px solid #aaa;
            border-radius: 2px;
            vertical-align: middle;
        }
        input[type="text"], input[type="email"], select {
            width: 150px;
        }
        textarea {
            width: 300px;
            height: 60px;
            resize: none;
        }
        .dob-select {
            width: 60px;
            margin-right: 5px;
            vertical-align: middle;
        }
        .radio-label, .checkbox-label {
            margin-right: 10px;
            font-size: 13px;
        }
        input[type="checkbox"], input[type="radio"] {
            vertical-align: middle;
        }
        input[type="text"].small {
            width: 100px;
        }
        table.qual-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 8px;
            font-size: 12px;
        }
        table.qual-table, table.qual-table th, table.qual-table td {
            border: 1px solid #004080;
        }
        table.qual-table th {
            background-color: #c6d9f1;
            padding: 4px 6px;
        }
        table.qual-table td {
            padding: 3px 5px;
            text-align: center;
        }
        table.qual-table td input[type="text"] {
            width: 95%;
            font-size: 12px;
            padding: 2px 3px;
        }
        .button-row {
            text-align: center;
            margin-top: 15px;
        }
        input[type="submit"], input[type="reset"] {
            font-size: 13px;
            padding: 4px 12px;
            margin: 0 8px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<form action="registration-form" method="POST">
    <table class="form-table">
        <tr>
            <td class="label"><label>First name:</label></td>
            <td><input type="text" name="firstName" /></td>
        </tr>

        <tr>
            <td class="label"><label>Last name:</label></td>
            <td><input type="text" name="lastName" /></td>
        </tr>

        <tr>
            <td class="label">Date of birth:</td>
            <td>
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
            </td>
        </tr>

        <tr>
            <td class="label"><label>Email</label></td>
            <td><input type="email" name="email" /></td>
        </tr>

        <tr>
            <td class="label"><label>Mobile number</label></td>
            <td><input type="text" name="mobile" /></td>
        </tr>

        <tr>
            <td class="label">Gender</td>
            <td>
                <input type="radio" name="gender" value="Male" /> Male
                <input type="radio" name="gender" value="Female" /> Female
            </td>
        </tr>

        <tr>
            <td class="label"><label>Address</label></td>
            <td><textarea name="address"></textarea></td>
        </tr>

        <tr>
            <td class="label"><label>City</label></td>
            <td><input type="text" name="city" /></td>
        </tr>

        <tr>
            <td class="label"><label>Pin code</label></td>
            <td><input type="text" name="pincode" /></td>
        </tr>

        <tr>
            <td class="label"><label>State</label></td>
            <td><input type="text" name="state" /></td>
        </tr>

        <tr>
            <td class="label"><label>Country</label></td>
            <td><input type="text" name="country" value="India" /></td>
        </tr>

        <tr>
            <td class="label">Hobbies</td>
            <td>
                <input type="checkbox" name="hobbies" value="Drawing" /> Drawing
                <input type="checkbox" name="hobbies" value="Singing" /> Singing
                <input type="checkbox" name="hobbies" value="Dancing" /> Dancing
                <input type="checkbox" name="hobbies" value="Sketching" /> Sketching
                <input type="checkbox" name="hobbies" value="Others" /> Others
            </td>
        </tr>

        <tr>
            <td class="label" style="vertical-align: top;">Qualification</td>
            <td colspan="2">
                <table class="qual-table">
                    <tr>
                        <th>Sl.No.<br/>Examination</th>
                        <th>Board</th>
                        <th>Percentage</th>
                        <th>Year of Passing</th>
                    </tr>
                    <% for(int i=1; i<=4; i++) {
                        String exam = "";
                        switch(i) {
                            case 1: exam = "Class X"; break;
                            case 2: exam = "Class XII"; break;
                            case 3: exam = "Graduation"; break;
                            case 4: exam = "Masters"; break;
                        }
                    %>
                    <tr>
                        <td><%=i%> <br/> <%=exam%></td>
                        <td><input type="text" /></td>
                        <td><input type="text" /></td>
                        <td><input type="text" /></td>
                    </tr>
                    <% } %>
                </table>
            </td>
        </tr>

        <tr>
            <td class="label">Course applies for</td>
            <td>
                <input type="radio" name="course" value="BCA" /> BCA
                <input type="radio" name="course" value="B.Com" /> B.Com
                <input type="radio" name="course" value="B.Sc" /> B.Sc
                <input type="radio" name="course" value="B.A" /> B.A
            </td>
        </tr>

        <tr>
            <td colspan="2" class="button-row">
                <input type="submit" value="Submit" />
                <input type="reset" value="Reset" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
