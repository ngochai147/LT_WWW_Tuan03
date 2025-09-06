package iuh.fit.se.bai02.model;

import java.time.LocalDate;

public class User {
    private String firstname;
    private String lastname;
    private String email;
    private String password;
    private LocalDate birthday;
    private Gender gender;

    public User(){

    }

    public User(LocalDate birthday, String email, String firstname, Gender gender, String lastname, String password) {
        this.birthday = birthday;
        this.email = email;
        this.firstname = firstname;
        this.gender = gender;
        this.lastname = lastname;
        this.password = password;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
