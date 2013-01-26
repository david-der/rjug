package com.rvajug

/**
 * User: davidder
 * Date: 10/29/12
 * Time: 9:01 PM
 */
public enum MemberType {

    STEERING("Steering"), COMMUNITY("Community"), RECRUITER("Recruiting"), SPONSOR("Sponsoring")

    private String value

    private MemberType(String s) {
         this.value = s
    }

    public String toString() {
        return this.value
    }

}