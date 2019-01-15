# frozen_string_literal: true

require_relative '../lib/00_multiples.rb'

describe "the multiple_of_3_or_5 method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(multiple_of_3_or_5(3)).to eq(true)
    expect(multiple_of_3_or_5(5)).to eq(true)
    expect(multiple_of_3_or_5(51)).to eq(true)
    expect(multiple_of_3_or_5(45)).to eq(true)
    expect(multiple_of_3_or_5(666)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(multiple_of_3_or_5(2)).to eq(false)
    expect(multiple_of_3_or_5(7)).to eq(false)
    expect(multiple_of_3_or_5(667)).to eq(false)
  end
end

describe "the sum_of_3_and_5_multiples method" do
  it "integer = true" do
    expect(sum_of_3_and_5_multiples(3)).to eq(0)
    expect(sum_of_3_and_5_multiples(11)).to eq(33)
    expect(sum_of_3_and_5_multiples(666)).to eq(103_298)
  end

  it "integer = false" do
    expect(sum_of_3_and_5_multiples(-1)).to eq("Seuls les entiers naturels sont acceptés.")
    expect(sum_of_3_and_5_multiples(1.47)).to eq("Seuls les entiers naturels sont acceptés.")
    expect(sum_of_3_and_5_multiples("blabla")).to eq("Seuls les entiers naturels sont acceptés.")
  end
end
