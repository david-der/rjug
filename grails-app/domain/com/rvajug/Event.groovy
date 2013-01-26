package com.rvajug

class Event {

    Date eventDate
    Sponsor sponsor
    Speaker speaker
    Topic topic
    Image image
    String description

    static constraints = {
    }

    public String toString() {
        return eventDate + ": " + speaker.toString() + " on " + topic.toString()
    }
}
