class GuidelinesController < ApplicationController
  def index
    require 'open-uri'
    base_url = 'https://www.eatforhealth.gov.au/guidelines/australian-dietary-guidelines-1-5'
    @guidelines = Nokogiri::HTML(open(base_url)).css('div.field-item.even')

  end
end
