# frozen_string_literal: true

require_relative "../caesar_cipher/caesar_cipher"

RSpec.describe "Caesar Cipher" do
  context "when cipher has shift factor 3" do
    it 'correctly ciphers "hello world"' do
      expect(caesar_cipher("hello world", 3)).to eq("khoor zruog")
    end

    it "correctly ciphers a fairly lengthy string" do
      string = "There are a lot things I would really want to do, but things take time."
      expected_output = "Wkhuh duh d orw wklqjv L zrxog uhdoob zdqw wr gr, exw wklqjv wdnh wlph."
      expect(caesar_cipher(string, 3)).to eq(expected_output)
    end
  end

  context "when cipher has shift factor 5" do
    it "returns an empty string when no string is provided" do
      expect(caesar_cipher("", 5)).to eq("")
    end

    it 'correctly ciphers "Odin"' do
      expect(caesar_cipher("Odin", 5)).to eq("Tins")
    end

    it "correctly ciphers text with symbols" do
      expect(caesar_cipher("Hello, world!", 5)).to eq("Mjqqt, btwqi!")
    end

    it "can handle a fancy text with my code name" do
      expect(caesar_cipher("I am theLazyProgrammer^_^", 5)).to eq("N fr ymjQfedUwtlwfrrjw^_^")
    end
  end
end
