class EntriesController < ApplicationController

  def new
    @entry = Entry.new
    @entry["place_id"] = params["place_id"]  # Prefill place_id from query string
    render :template => "entries/new"
  end

  def create
    new_entry = Entry.new
    new_entry["title"] = params["title"]
    new_entry["description"] = params["description"]
    new_entry["occurred_on"] = params["occurred_on"]
    new_entry["place_id"] = params["place_id"]  # Link entry to the correct place
    new_entry.save
  
    redirect_to "/places/#{new_entry["place_id"]}"  # Send user back to the place page
  end
  
  

end
