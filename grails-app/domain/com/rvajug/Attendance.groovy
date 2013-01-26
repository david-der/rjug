package com.rvajug

class Attendance {

    Member member
    Event event

    static constraints = {
        member(nullable: false)
        event(nullable: false)
    }
}
