import gleam/int
import gleam/string

pub fn convert(number: Int) -> String {
  let sound = ""

  let sound = case number % 3 == 0 {
    True -> sound <> "Pling"
    False -> sound
  }

  let sound = case number % 5 == 0 {
    True -> sound <> "Plang"
    False -> sound
  }

  let sound = case number % 7 == 0 {
    True -> sound <> "Plong"
    False -> sound
  }

  let sound = case string.is_empty(sound) {
    True -> int.to_string(number)
    False -> sound
  }
  sound
}
