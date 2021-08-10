require "rails_helper"

RSpec.describe Student, type: :model do
  describe "student full_name method" do
    it "returns full_name for a student" do
      student = build(:student, title: "Mr", first_name: "Paul", middle_name: "Michael", last_name: "Korosi")
      expect(student.full_name).to eq "Mr Paul Michael Korosi"
    end
    
    it "returns full_name for a student with a single name" do
      student = build(:student, title: "", first_name: "", middle_name: "", last_name: "Klorthoss")
      expect(student.full_name).to eq "Klorthoss"
    end
  end
end
