package model;


import java.sql.Date;
import java.sql.Time;


public class Appointments {
    private String name;
    private int year;
    private int id;
    private String car;
    private String service;
    private Date date;
    private Time time;
    private String phone;
    private int isActive;

    public Appointments() {
    }
    public Appointments(int id, String name, String phone, String car, int year, Date date, Time time, String service) {
        this.id = id;
        this.name = name;
        this.year = year;
        this.car = car;
        this.service = service;
        this.date = date;
        this.time = time;
        this.phone = phone;
        this.isActive = isActive;
        this.id = id;
    }
    public Appointments(String name, String phone, String car, int year, Date date, Time time, String service) {
        this.name = name;
        this.year = year;
        this.car = car;
        this.service = service;
        this.date = date;
        this.time = time;
        this.phone = phone;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCar() {
        return car;
    }

    public void setCar(String car) {
        this.car = car;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public Integer getActive() {
        return isActive;
    }

    public void setActive(Integer isActive) {
        this.isActive = isActive;
    }
}