# frozen_string_literal: true

require_relative '../lib/01_caesar_cipher.rb'

# should return each letter displaced by the number given, in the alphabet reading order
describe "caesar_cipher" do
  it "translates one character correctly" do
    expect(caesar_cipher("a", 4)).to eq("e")
  end
  it "translates one uppercase character correctly" do
    expect(caesar_cipher("A", 4)).to eq("E")
  end
  it "returns at the start of the alphabet if it goes past it's 26 letters" do
    expect(caesar_cipher("x", 5)).to eq("c")
  end
  it "translates correctly a full word" do
    expect(caesar_cipher("Word", 2)).to eq("Yqtf")
  end
  it "keeps punctuation over translation" do
    expect(caesar_cipher(", !", 7)).to eq(", !")
  end
  it "translates correctly a full sentence" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
  it "works correctly if asked to circle the alphabet multiple times with a number bigger than 26" do
    expect(caesar_cipher("Is that even possible?", 420)).to eq("Mw xlex izir tswwmfpi?")
  end
end
