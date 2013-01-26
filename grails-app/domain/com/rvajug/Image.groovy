package com.rvajug

class Image {

    String name
    byte[] file

    static constraints = {
        name size: 1..25, blank: false
        file maxSize: 1024 * 1024 * 2
    }

    public String toString() {
        return name
    }
}
