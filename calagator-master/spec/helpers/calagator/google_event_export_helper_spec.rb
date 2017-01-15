require 'spec_helper'

module Calagator

describe GoogleEventExportHelper, :type => :helper do
  describe "google_event_export_link" do
    let(:params) { Rack::Utils.parse_query(@export) }

    def escape(string)
      return Regexp.escape(CGI.escape(string))
    end

    shared_context "exported event setup" do
      before do
        @venue = Venue.create!(:title => "My venue", :address => "1930 SW 4th Ave, Portland, Oregon 97201")
        @event = Event.create!(:title => "My event", :start_time => "2010-01-01 12:00:00", :end_time => "2010-01-01 13:00:00", :venue => @venue, :description => event_description)
        @export = helper.google_event_export_link(@event)
      end
    end

    shared_examples_for "exported event" do
      it "should have title" do
        params["text"].should == @event.title
      end

      it "should have time range in utc" do
        format = "%Y%m%dT%H%M%SZ"
        params["dates"].should == [
          @event.start_time.utc.strftime(format),
          @event.end_time.utc.strftime(format),
        ].join("/")
      end

      it "should have venue title and address" do
        params["location"].should == "#{@event.venue.title}, #{@event.venue.geocode_address}"
      end
    end

    describe "an event's text doesn't need truncation" do
      let(:event_description) { "My event description." }
      include_context "exported event setup"

      it_should_behave_like "exported event"

      it "should have a complete event description" do
        params["details"].should include event_description
      end
    end

    describe "an event's text needs truncation" do
      let(:event_description) { "My event description. " * 100 }
      include_context "exported event setup"

      it_should_behave_like "exported event"

      it "should have a truncated event description" do
        params["details"].should include event_description[0..100]
      end

      it "should have a truncated URL" do
        expect(@export.size).to be < event_description.size
      end
    end
  end
end

end
