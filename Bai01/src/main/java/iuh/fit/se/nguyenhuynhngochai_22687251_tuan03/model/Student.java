package iuh.fit.se.nguyenhuynhngochai_22687251_tuan03.model;

import java.time.LocalDate;
import java.util.List;

public class Student {
    private String firstName;
    private String lastName;

    private LocalDate  birthday;
    private String email;
    private String mobile;
    private String gender;
    private String address;
    private String city;
    private String pinCode;
    private String state;
    private String country;
    private List<String> hobbies;

    private Qualification[] qualifications;

    private String courseAppliesFor;


    public Student() {}

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    // Constructor đầy đủ
    public Student(String firstName, String lastName, String email,
                   String mobile, String gender, String address, String city, String pinCode, String state, String country,
                   List<String> hobbies, Qualification[] qualifications, String courseAppliesFor,LocalDate  birthday) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.birthday=birthday;
        this.email = email;
        this.mobile = mobile;
        this.gender = gender;
        this.address = address;
        this.city = city;
        this.pinCode = pinCode;
        this.state = state;
        this.country = country;
        this.hobbies = hobbies;
        this.qualifications = qualifications;
        this.courseAppliesFor = courseAppliesFor;
    }

    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }


    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getMobile() { return mobile; }
    public void setMobile(String mobile) { this.mobile = mobile; }

    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }

    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }

    public String getCity() { return city; }
    public void setCity(String city) { this.city = city; }

    public String getPinCode() { return pinCode; }
    public void setPinCode(String pinCode) { this.pinCode = pinCode; }

    public String getState() { return state; }
    public void setState(String state) { this.state = state; }

    public String getCountry() { return country; }
    public void setCountry(String country) { this.country = country; }

    public List<String> getHobbies() { return hobbies; }
    public void setHobbies(List<String> hobbies) { this.hobbies = hobbies; }



    public Qualification[] getQualifications() { return qualifications; }
    public void setQualifications(Qualification[] qualifications) { this.qualifications = qualifications; }

    public String getCourseAppliesFor() { return courseAppliesFor; }
    public void setCourseAppliesFor(String courseAppliesFor) {
        this.courseAppliesFor = courseAppliesFor;
    }
}
