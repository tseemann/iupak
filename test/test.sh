#!/usr/bin/env bats

setup() {
  name="iupak"
  bats_require_minimum_version 1.5.0
  dir=$(dirname "$BATS_TEST_FILENAME")
  cd "$dir"
  bin="$dir/../$name"
}

@test "Script syntax check" {
  run -0 perl -c "$dir/../$name"
}
@test "Version" {
  run -0 $bin -v
  [[ "$output" =~ "$name" ]]
}
@test "Help" {
  run -0 $bin -h
  [[ "$output" =~ "USAGE" ]]
}
@test "No parameters" {
  run -0 $bin
}
@test "Bad option" {
  run ! $bin -X
  [[ "$output" =~ "Unknown option" ]]
  [[ ! "$output" =~ "USAGE" ]]
}
@test "Show table -t" {
  run -0 $bin -t
  [[ "$output" =~ "ACGT" ]]
}
@test "Show table -t -u (RNA)" {
  run -0 $bin -t -u
  [[ "$output" =~ "ACGU" ]]
}
@test "DNA string" {
  run -0 $bin "RANT"
  [[ "${lines[0]}" == '/[AG]A[ACGT]T/' ]]
}
