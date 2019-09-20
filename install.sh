#!/usr/local/bin/fish

function try_link
  if ! test -f $argv[2]
    ln -s $PWD/$argv[1] $argv[2]
    echo "link $argv[2] created for $argv[1]"
  else
    echo "$argv[2] already exists. Please fix this manually."
  end
end


echo "Installing mcdoc commands..."

try_link md2pdf.sh /usr/local/bin/md2pdf
