require "csv"

class Pothole < ActiveRecord::Base
  CSV_NAME = "db/load/potholes.csv"

  def self.parse_csv
    CSV.foreach(Rails.root.join(CSV_NAME), :encoding => "UTF-8", :headers => true) do |row|
       pothole = Pothole.new({
        :creation_date    => row["Creation Date"],
        :status           => row["Status"],
        :completion_date  => row["Completion Date"],
        :request_number   => row["Service Request Number"],
        :service_type     => row["Type of Service Request"],
        :current_activity => row["Current Activity"],
        :recent_action    => row["Most Recent Action"],
        :potholes_filled  => row["Number of Potholes Filled on Block"],
        :address          => row["Street Address"],
        :zip              => row["Zip"],
        :y_coord          => row["X Coordinate"],
        :x_coord          => row["Y Coordinate"],
        :ward             => row["Ward"],
        :district         => row["Police District"],
        :community        => row["Community Area"],
        :latitude         => row["Latitude"],
        :longitude        => row["Longitude"],
        :location         => row["Location"]
       })
     pothole.save
  end
  end
end
