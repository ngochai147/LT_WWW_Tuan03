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
        span.note {
            font-size: 11px;
            color: #555;
            margin-left: 8px;
            vertical-align: middle;
            white-space: nowrap;
            display: inline-block;
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
        /* Qualification table */
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
        .qual-note {
            font-size: 11px;
            color: #004080;
            margin-top: 2px;
        }
        /* Submit/reset buttons */
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
<form action="registration-form" method="GET">
    <table class="form-table">
        <tr>
            <td class="label"><label for="first-name">First name:</label></td>
            <td>
                <input type="text" id="first-name" maxlength="30" pattern="[A-Za-z]+" required />
                <span class="note">(max 30 characters a-z and A-Z)</span>
            </td>
        </tr>

        <tr>
            <td class="label"><label for="last-name">Last name:</label></td>
            <td>
                <input type="text" id="last-name" maxlength="30" pattern="[A-Za-z]+" required />
                <span class="note">(max 30 characters a-z and A-Z)</span>
            </td>
        </tr>

        <tr>
            <td class="label">Date of birth:</td>
            <td>
                <select id="day" class="dob-select" required>
                    <option value="">Day</option>
                    <% for(int i=1; i<=31; i++) { %>
                    <option value="<%=i%>"><%=i%></option>
                    <% } %>
                </select>
                <select id="month" class="dob-select" required>
                    <option value="">Month</option>
                    <option value="1">Jan</option><option value="2">Feb</option><option value="3">Mar</option><option value="4">Apr</option>
                    <option value="5">May</option><option value="6">Jun</option><option value="7">Jul</option><option value="8">Aug</option>
                    <option value="9">Sep</option><option value="10">Oct</option><option value="11">Nov</option><option value="12">Dec</option>
                </select>
                <select id="year" class="dob-select" required>
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
            <td class="label"><label for="email">Email</label></td>
            <td>
                <input type="email" id="email" required />
            </td>
        </tr>

        <tr>
            <td class="label"><label for="mobile">Mobile number</label></td>
            <td>
                <input type="text" id="mobile" pattern="\d{10}" maxlength="10" required />
                <span class="note">(10 digit number)</span>
            </td>
        </tr>

        <tr>
            <td class="label">Gender</td>
            <td>
                <input type="radio" id="male" name="gender" required />
                <label for="male" class="radio-label">Male</label>
                <input type="radio" id="female" name="gender" />
                <label for="female" class="radio-label">Female</label>
            </td>
        </tr>

        <tr>
            <td class="label"><label for="address">Address</label></td>
            <td><textarea id="address"></textarea></td>
        </tr>

        <tr>
            <td class="label"><label for="city">City</label></td>
            <td>
                <input type="text" id="city" maxlength="30" />
                <span class="note">(max 30 characters a-z and A-Z)</span>
            </td>
        </tr>

        <tr>
            <td class="label"><label for="pincode">Pin code</label></td>
            <td>
                <input type="text" id="pincode" pattern="\d{6}" maxlength="6" />
                <span class="note">(6 digit number)</span>
            </td>
        </tr>

        <tr>
            <td class="label"><label for="state">State</label></td>
            <td>
                <input type="text" id="state" maxlength="30" />
                <span class="note">(max 30 characters a-z and A-Z)</span>
            </td>
        </tr>

        <tr>
            <td class="label"><label for="country">Country</label></td>
            <td><input type="text" id="country" value="India" readonly /></td>
        </tr>

        <tr>
            <td class="label">Hobbies</td>
            <td>
                <input type="checkbox" id="drawing" />
                <label for="drawing" class="checkbox-label">Drawing</label>

                <input type="checkbox" id="singing" />
                <label for="singing" class="checkbox-label">Singing</label>

                <input type="checkbox" id="dancing" />
                <label for="dancing" class="checkbox-label">Dancing</label>

                <input type="checkbox" id="sketching" />
                <label for="sketching" class="checkbox-label">Sketching</label>

                <input type="checkbox" id="others" />
                <label for="others" class="checkbox-label">Others</label>

                <input type="text" id="other-hobby" class="small" />
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
                        <td><input type="text" maxlength="10" /></td>
                        <td><input type="text" pattern="\\d+(\\.\\d{1,2})?" /></td>
                        <td><input type="text" /></td>
                    </tr>
                    <% } %>
                </table>
                <div class="qual-note">(10 char max) &nbsp;&nbsp;&nbsp;&nbsp; (upto 2 decimal)</div>
            </td>
        </tr>

        <tr>
            <td class="label">Course applies for</td>
            <td>
                <input type="radio" id="bca" name="course" required />
                <label for="bca" class="radio-label">BCA</label>

                <input type="radio" id="bcom" name="course" />
                <label for="bcom" class="radio-label">B.Com</label>

                <input type="radio" id="bsc" name="course" />
                <label for="bsc" class="radio-label">B.Sc</label>

                <input type="radio" id="ba" name="course" />
                <label for="ba" class="radio-label">B.A</label>
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

