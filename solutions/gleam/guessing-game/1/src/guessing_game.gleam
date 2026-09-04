pub fn reply(guess: Int) -> String {
  case guess {
    42 -> "Correct"
    41 | 43 -> "So close"
    lower_than_41 if lower_than_41 < 41 -> "Too low"
    higher_than_43 if higher_than_43 > 43 -> "Too high"
    _ -> "Invalid guess"
  }
}
