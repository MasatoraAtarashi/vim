export PS1="\n"$PS1

# Setup ssh-agent
if [ -f ~/.ssh-agent ]; then
    . ~/.ssh-agent
fi
if [ -z "$SSH_AGENT_PID" ] || ! kill -0 $SSH_AGENT_PID; then
    ssh-agent > ~/.ssh-agent
    . ~/.ssh-agent
fi
ssh-add -l >& /dev/null || ssh-add

alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/| /g'"

alias unko="figlet -w60 -f starwars unko"

function unkoBuriBuri() {
  cd /Users/MasatoraAtarashi/Desktop;
  mkdir unko{1..200}  
  cd unko1;
  touch unko.txt;
  echo "unko" > unko.txt

}

alias unkoburiburi=unkoBuriBuri
