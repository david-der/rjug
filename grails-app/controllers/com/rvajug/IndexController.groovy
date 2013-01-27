package com.rvajug

class IndexController {

    def index() {
        [eventInstanceList: Event.list()]
    }
}
