import gleam/int

pub fn convert(number: Int) -> String {
  let roman_numerals = ""

  let thousands = case int.floor_divide(number, 1000) {
    Ok(thousands) -> thousands
    _ -> 0
  }

  let roman_digit = case thousands {
    1 -> "M"
    2 -> "MM"
    3 -> "MMM"
    _ -> ""
  }

  let number = number - thousands * 1000
  let roman_numerals = roman_numerals <> roman_digit

  let hundreds = case int.floor_divide(number, 100) {
    Ok(hundreds) -> hundreds
    _ -> 0
  }

  let roman_digit = case hundreds {
    1 -> "C"
    2 -> "CC"
    3 -> "CCC"
    4 -> "CD"
    5 -> "D"
    6 -> "DC"
    7 -> "DCC"
    8 -> "DCCC"
    9 -> "CM"
    _ -> ""
  }
  let number = number - hundreds * 100
  let roman_numerals = roman_numerals <> roman_digit

  let tens = case int.floor_divide(number, 10) {
    Ok(tens) -> tens
    _ -> 0
  }
  let number = number - tens * 10

  let roman_digit = case tens {
    1 -> "X"
    2 -> "XX"
    3 -> "XXX"
    4 -> "XL"
    5 -> "L"
    6 -> "LX"
    7 -> "LXX"
    8 -> "LXXX"
    9 -> "XC"
    _ -> ""
  }
  let roman_numerals = roman_numerals <> roman_digit

  let ones = case int.floor_divide(number, 1) {
    Ok(ones) -> ones
    _ -> 0
  }

  let roman_digit = case ones {
    1 -> "I"
    2 -> "II"
    3 -> "III"
    4 -> "IV"
    5 -> "V"
    6 -> "VI"
    7 -> "VII"
    8 -> "VIII"
    9 -> "IX"
    _ -> ""
  }
  let roman_numerals = roman_numerals <> roman_digit

  roman_numerals
}
