package com.rvajug

class Speaker {

    String firstName
    String lastName
    Company company
    String background
    Image image

    static constraints = {
    }

    public String toString() {
        return firstName + " " + lastName
    }
}
