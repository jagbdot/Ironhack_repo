require "rspec"
require "pry"
require_relative("../excercise.rb")

RSpec.describe "PasswordChecker" do

  let (:password) { PasswordChecker.new("Jorge@ironhack.com", "ironhack1A2%34a5678") }

  it "returns passwords if it is longer than 7 characters" do
    expect(password.check_length).to eq(true)
  end
  it "it must contains 1 letter" do
    expect(password.check_one_letter).to eq(true)
  end
  it "it must contains 1 number" do
    expect(password.check_one_numeric).to eq(true)
  end
  it "it must contains 1 symbol" do
    expect(password.check_one_symbol).to eq(true)
  end
  it "it must contains 1 upcase letter" do
    expect(password.check_one_upcase_letter).to eq(true)
  end
  it "it must contains 1 lowercase letter" do
    expect(password.check_one_lowercase_letter).to eq(true)
  end
  it "it must contains neither the name or de the domain of the email" do
    expect(password.check_name_or_domain).to eq(true)
  end
end