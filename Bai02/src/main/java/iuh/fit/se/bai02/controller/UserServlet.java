package iuh.fit.se.bai02.controller;

import iuh.fit.se.bai02.dao.UserDAO;
import iuh.fit.se.bai02.utils.DBConnection;
import iuh.fit.se.bai02.model.Gender;
import iuh.fit.se.bai02.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@WebServlet("/registration-form")
public class UserServlet extends HttpServlet {
    UserDAO userDAO;
    @Override
    public void init(ServletConfig config) throws ServletException {
        userDAO=new UserDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstname=req.getParameter("first-name");
        String lastname=req.getParameter("last-name");
        String password=req.getParameter("password");
        int day= Integer.parseInt(req.getParameter("dayOfBirth"));
        int year= Integer.parseInt(req.getParameter("yearOfBirth"));
        String month=req.getParameter("monthOfBirth");
        int monthInt=getMonthNumber(month);
        LocalDate birthday=LocalDate.of(year,monthInt,day);
        String email=req.getParameter("your-email");

        Gender gender=req.getParameter("gender").equals("Female")?Gender.FEMALE:Gender.MALE;

        userDAO.insertUser(firstname,lastname,email,password,birthday,gender);
        List<User> list = userDAO.getAllUsers();
        req.setAttribute("userList", list);

        // Chuyển hướng sang listUsers.jsp
        RequestDispatcher dispatcher = req.getRequestDispatcher("listUsers.jsp");
        dispatcher.forward(req, resp);

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
