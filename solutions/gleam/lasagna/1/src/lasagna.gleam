// Please define the expected_minutes_in_oven function

pub fn expected_minutes_in_oven() {
  let expected_minutes_in_oven = 40
}

// Please define the remaining_minutes_in_oven function

pub fn remaining_minutes_in_oven(actual_minutes_in_oven: Int) {
  expected_minutes_in_oven() - actual_minutes_in_oven
}

// Please define the preparation_time_in_minutes function

pub fn preparation_time_in_minutes(number_of_layers: Int) {
  let minutes_to_prepare_per_layer = 2

  number_of_layers * minutes_to_prepare_per_layer
}

// Please define the total_time_in_minutes function
pub fn total_time_in_minutes(
  number_of_layers: Int,
  actual_minutes_in_oven: Int,
) {
  preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
}

// Please define the alarm function
pub fn alarm() {
  let ding_sound = "Ding!"
}
