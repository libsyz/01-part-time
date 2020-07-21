
require 'rspec'
require '../lib/ruby_methods.rb'

describe "#full_name_printer" do
  it "returns the capitalized first name and last name of Miguel" do
    result = full_name_printer("miguel", "jimenez")
    expect(result).to eq("Miguel Jimenez")
  end

  it "returns the capitalized first name and last name
  of non standardized strings" do
    result = full_name_printer("pRiMa", "AuLiA")
    expect(result).to eq("Prima Aulia")
  end
end


describe "#greeter" do
  it "returns a string that contains a greeting" do
    result = greeter("miguel", "jimenez")
    expect(result).to include("Hello")
  end

  it "Uses Mr. to greet male names" do
    expect(greeter("Miguel", "Jimenez")).to eq(
      "Hello Mr. Miguel Jimenez"
      )
    expect(greeter("Prima", "Aulia")).to eq(
      "Hello Mr. Prima Aulia"
      )
  end

  it "Uses Ms. to greet female names" do
    expect(greeter("Sonia", "Montero")).to eq(
      "Hello Ms. Sonia Montero"
      )
    expect(greeter("Rachel", "Tang")).to eq(
      "Hello Ms. Rachel Tang"
      )
  end
end

describe "#kg_to_pounds" do
  it "expects a float" do
    expect { kg_to_pounds(5) }.to raise_error(ArgumentError)
  end

  it "returns 2.205 pounds when given 1kg" do
    expect(kg_to_pounds(1.0)).to eq (2.205)
  end

  it "returns 100 pounds when given 45.3592 kg" do
    expect(kg_to_pounds(45.3592)).to be_within(0.1).of(100)
  end
end


describe "#training_cost_calculator" do
  context "3 employees, 50 SGD hourly salary, 2 hours training" do
    it "returns 300 SGD" do
      expect(training_cost_calculator(50, 3, 2)).to eq (300)
    end
  end

  context "10 employees, 100 SGD hourly salary, 10 hours training" do
    it "returns 10,000 SGD" do
      expect(training_cost_calculator(100, 10, 10)).to eq (10_000)
    end
  end
end


describe "#training_cost_decider" do
  context "3 employees, 50 SGD hourly salary, 2 hours training" do
    it "says the training is approved" do
      expect(training_cost_decider(50, 3, 2)).to eq ("The training is approved")
    end
  end

  context "10 employees, 100 SGD hourly salary, 10 hours training" do
    it "says the training is too expensive" do
      expect(training_cost_decider(100, 10, 10)).to eq ("The training is too expensive")
    end
  end
end
