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

  def convertions_to_second_conditional
    value_converted = convertions.to_i
    less = value_converted - 10_000
    less.to_s
  end

  def verify
    value = convertions.to_sym
    value2 = convertions_to_second_conditional.to_sym
    if @convert_Value < 16
      return @dictionary[value].inspect if convertions == value.to_s
    elsif convertions_to_second_conditional == value2.to_s
      @dictionary[value2].reverse.inspect
    end
  end
end
