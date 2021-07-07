require 'rails_helper'

describe Student do
  before(:each) do
    @student = Student.create!(first_name: "Daenerys", last_name: "Targaryen")
  end

  it 'can be created' do
    expect(@student).to be_valid
  end

  it 'has a full_name instance method' do
    expect(@student.full_name).to eq("Daenerys Targaryen")
  end
end