package com.rvajug

class Address {

    String streetAddr
    String city
    String state
    String zip
    String specifics

    static constraints = {
    }

    public String toString() {
        return streetAddr + "/n" + city + ", " + state + " " + zip
    }
}
