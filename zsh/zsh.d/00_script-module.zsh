_os-detect() {
  if [ -f /etc/os-release ];then
      . /etc/os-release
      echo ${ID}
  fi
}
