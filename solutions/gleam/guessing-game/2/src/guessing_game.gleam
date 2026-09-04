pub fn reply(guess: Int) -> String {
  case guess {
    42 -> "Correct"
    41 | 43 -> "So close"
    lower_than_41 if lower_than_41 < 41 -> "Too low"
    _ -> "Too high"
  }
}
