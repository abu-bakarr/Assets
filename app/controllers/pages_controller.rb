class PagesController < ApplicationController
    def about
        @title = 'About Us'
        @content = "this is comming from the About page"
    end
end
