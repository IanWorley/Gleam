import gleam/string

pub fn hey(remark: String) -> String {
  let is_question = string.trim(remark) |> string.ends_with("?")
  let is_all_caps =
    string.uppercase(remark) == remark
    && !string.is_empty(remark)
    && string.uppercase(remark) != string.lowercase(remark)
  let is_silence = string.trim(remark) |> string.is_empty

  case is_question, is_all_caps, is_silence {
    True, True, False -> "Calm down, I know what I'm doing!"
    False, False, True -> "Fine. Be that way!"
    True, False, False -> "Sure."
    False, True, False -> "Whoa, chill out!"
    _, _, _ -> "Whatever."
  }
}
