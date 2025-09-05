package iuh.fit.se.nguyenhuynhngochai_22687251_tuan03.model;

// Lớp Qualification (có thể tách ra file riêng)
public  class Qualification {
    private String exam;
    private String board;
    private double percentage;
    private int yearOfPassing;

    public Qualification() {}

    public Qualification(String exam, String board, double percentage, int yearOfPassing) {
        this.exam = exam;
        this.board = board;
        this.percentage = percentage;
        this.yearOfPassing = yearOfPassing;
    }

    public String getExam() { return exam; }
    public void setExam(String exam) { this.exam = exam; }

    public String getBoard() { return board; }
    public void setBoard(String board) { this.board = board; }

    public double getPercentage() { return percentage; }
    public void setPercentage(double percentage) { this.percentage = percentage; }

    public int getYearOfPassing() { return yearOfPassing; }
    public void setYearOfPassing(int yearOfPassing) { this.yearOfPassing = yearOfPassing; }
}
