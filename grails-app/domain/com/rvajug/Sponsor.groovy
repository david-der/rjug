package com.rvajug

class Sponsor {

    Member contact
    Company company
    SponsorLevel sponsorLevel

    static constraints = {

        sponsorLevel(nullable: true)
    }

    public String toString() {
        company.toString()
    }
}
