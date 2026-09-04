import gleam/string

pub fn message(log_line: String) -> String {
  string.crop(log_line, " ") |> string.trim()
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[INFO]" <> _rest -> "info"
    "[WARNING]" <> _rest -> "warning"
    "[ERROR]" <> _rest -> "error"
    _ -> "unknown"
  }
}

pub fn reformat(log_line: String) -> String {
  let msg = message(log_line)
  let level = log_level(log_line)
  msg <> " (" <> level <> ")"
}
