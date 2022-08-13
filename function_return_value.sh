

main() {
  local _x _y _z

  return_with_global
  _x="$RETVAL"
  echo "$_x"

  _y=$(return_with_echo)
  echo "$_y"

  return_with_return
  _z=$?
  echo "$_z"
}

return_with_global() {
  RETVAL="linux"
}

return_with_echo() {
  echo "brandon"
}

return_with_return() {
  return 33
}

main
