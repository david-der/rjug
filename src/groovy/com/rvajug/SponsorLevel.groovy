package com.rvajug

/**
 * User: davidder
 * Date: 1/27/13
 * Time: 3:58 PM
 */
public enum SponsorLevel {

    GOLD_LEVEL("Gold Level Sponsor"), SILVER_LEVEL("Silver Level Sponsor"), SINGLE_EVENT("Single Event Sponsor")

    private String value

    private SponsorLevel(String level) {
        this.value = level
    }

    public String toString() {
        return this.value
    }

}