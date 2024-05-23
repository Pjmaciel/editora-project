module Modulo10
  def self.calculate_checksum(number)
    sum = 0
    multiplier = 1

    number.to_s.reverse.each_char do |digit|
      digit_int = digit.to_i
      multiplied_digit = digit_int * multiplier

      if multiplied_digit > 9
        sum += multiplied_digit.digits.sum
      else
        sum += multiplied_digit
      end

      multiplier = multiplier == 1 ? 2 : 1
    end

    check_digit = (10 - (sum % 10)) % 10
    return check_digit
  end
end
