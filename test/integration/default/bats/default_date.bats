@test "date binary is found in PATH" {
  run which date
  [ "$status" -eq 0 ]
}