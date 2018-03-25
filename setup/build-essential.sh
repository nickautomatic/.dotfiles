# Install build essential:
if ! type make >/dev/null 2>&1; then
  echo 'Installing build-essential';
  sudo apt-get update;
  sudo apt-get install build-essential;
fi;

