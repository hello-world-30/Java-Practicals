/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myownpackage;

public class MyNewBeanClass {
    private String name, address, mobile, email, age, gender, hobby, error;
    
    public MyNewBeanClass() {
        error = "";
    }
    
    public void setName(String s) {
        name = s;
    }
    public String getName(){
        return name;
    }
    
    public void setAddress(String addr) {
        address = addr;
    }
    public String getAddress() {
        return address;
    }
    
    public void setMobile(String mob) {
        mobile = mob;
    }
    public String getMobile() {
        return mobile;
    }
    
    public void setEmail(String em) {
        email = em;
    }
    public String getEmail() {
        return email;
    }
    
    public void setAge(String age) {
        this.age = age;
    }
    public String getAge() {
        return age;
    }
    
    public void setGender(String gen) {
        gender = gen;
    }
    public String getGender() {
        return gender;
    }
    
    public void setHobby(String hob) {
        hobby = hob;
    }
    public String getHobby() {
        return hobby;
    }
    
    public void setError(String err) {
        error = err;
    }
    public String getError() {
        return error;
    }
    
    
    public boolean validate() {
        boolean ans = true;
        
        if(name == null || name.trim().length() == 0) {
            ans = false;
            error += "Enter Name\n";
        }
        
        if(address == null || address.trim().length() == 0) {
            ans = false;
            error += "Enter Address\n";
        }
        
        if(mobile == null || mobile.trim().length() != 10) {
            ans = false;
            error += "Enter Mobile of Length 10\n";
        }
        
        if(age == null || Integer.parseInt(age.trim()) > 100) {
            ans = false;
            error += "Age must be less than 100\n";
        }
        
        if(email == null || email.trim().length() == 0) {
            ans = false;
            error += "Email must not be empty\n";
        }
        
        if(gender == null || gender.trim().length() == 0) {
            ans = false;
            error += "Gender cannot be empty!\n";
        }
        
        if(hobby == null || hobby.trim().length() == 0) {
            ans = false;
            error += "Hobby cannot be empty!\n";
        }
        
        return ans;
    }
}
