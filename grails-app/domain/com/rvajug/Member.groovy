package com.rvajug

class Member {

    String firstName
    String lastName
    String email
    Company company
    MemberType memberType
    Image image
    int points

    static constraints = {
        email(email: true, nullable: false)
    }

    public String toString() {
        return firstName + " " + lastName
    }
}
