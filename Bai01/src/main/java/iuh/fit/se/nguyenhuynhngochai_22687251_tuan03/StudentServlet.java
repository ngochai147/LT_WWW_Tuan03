package iuh.fit.se.nguyenhuynhngochai_22687251_tuan03;
import iuh.fit.se.nguyenhuynhngochai_22687251_tuan03.model.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;

@WebServlet("/registration-form")
public class StudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy dữ liệu từ form
        String fName = request.getParameter("firstName");
        String lName = request.getParameter("lastName");
        int day = Integer.parseInt(request.getParameter("dayOfBirth"));
        String month = request.getParameter("monthOfBirth");
        int year = Integer.parseInt(request.getParameter("yearOfBirth"));
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String pinCode = request.getParameter("pincode");
        String state = request.getParameter("state");
        String country = request.getParameter("country");

        int monthInt=getMonthNumber(month);

        LocalDate birthdate = LocalDate.of(year, monthInt, day);

        // Hobbies
        String[] selectedHobbies = request.getParameterValues("hobbies");
        List<String> hobbies = selectedHobbies != null ? Arrays.asList(selectedHobbies) : null;

        // Course
        String course = request.getParameter("course");

        // Date of birth tổng hợp



        // Tạo đối tượng Student
        Student student = new Student();
        student.setFirstName(fName);
        student.setLastName(lName);
        student.setBirthday(birthdate);
        student.setEmail(email);
        student.setMobile(mobile);
        student.setGender(gender);
        student.setAddress(address);
        student.setCity(city);
        student.setPinCode(pinCode);
        student.setState(state);
        student.setCountry(country);
        student.setHobbies(hobbies);
        student.setCourseAppliesFor(course);

        request.setAttribute("student", student);

        request.getRequestDispatcher("result-form.jsp").forward(request, response);
    }
    public int getMonthNumber(String monthName) {
        switch (monthName) {
            case "Jan": return 1;
            case "Feb": return 2;
            case "Mar": return 3;
            case "Apr": return 4;
            case "May": return 5;
            case "Jun": return 6;
            case "Jul": return 7;
            case "Aug": return 8;
            case "Sep": return 9;
            case "Oct": return 10;
            case "Nov": return 11;
            case "Dec": return 12;
            default: return 0;
        }
    }
}

