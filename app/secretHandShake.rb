# frozen_string_literal: true

# class SecretHandShake
class SecretHandShake
  def initialize(convert_Value, dictionary)
    @convert_Value = convert_Value
    @dictionary = dictionary
  end

  def convertions
    @convert_Value.to_s(2)
  end

  def verify
    return @dictionary[:"1"] if convertions == '1'
    return @dictionary[:"10"] if convertions == '10'
    return @dictionary[:"11"].inspect if convertions == '11'
    return @dictionary[:"100"] if convertions == '100'
    return @dictionary[:"101"].inspect if convertions == '101'
    return @dictionary[:"111"].inspect if convertions == '111'
    return @dictionary[:"1000"] if convertions == '1000'
    return @dictionary[:"1001"].inspect if convertions == '1001'
    return @dictionary[:"1010"].inspect if convertions == '1010'
    return @dictionary[:"1011"].inspect if convertions == '1011'
    return @dictionary[:"1011"].reverse.inspect if convertions == '11011'
    return @dictionary[:"1100"].inspect if convertions == '1100'
    return @dictionary[:"1101"].inspect if convertions == '1101'
    return @dictionary[:"1111"].inspect if convertions == '1111'
    return @dictionary[:"10000"] if convertions == '10000'
    return @dictionary[:"1"] if convertions == '10001'
    return @dictionary[:"10"] if convertions == '10010'
    return @dictionary[:"11"].reverse.inspect if convertions == '10011'
    return @dictionary[:"100"] if convertions == '10100'
    return @dictionary[:"101"].reverse.inspect if convertions == '10101'
    return @dictionary[:"110"].reverse.inspect if convertions == '10110'
    return @dictionary[:"111"].reverse.inspect if convertions == '10111'
    return @dictionary[:"1000"] if convertions == '11000'
    return @dictionary[:"1001"].reverse.inspect if convertions == '11001'
    return @dictionary[:"1010"].reverse.inspect if convertions == '11010'
    return @dictionary[:"1100"].reverse.inspect if convertions == '11100'
    return @dictionary[:"1101"].reverse.inspect if convertions == '11101'
    return @dictionary[:"1111"].reverse.inspect if convertions == '11111'
  end
end
