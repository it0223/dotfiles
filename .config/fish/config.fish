set -g fish_prompt_pwd_dir_length 0
set -g theme_date_format "+%Y %m/%d-%H:%M:%S (%a)"
set -g theme_color_scheme solarized


#vimをnvimに変更
alias vi='nvim'

#AWS設定
source ~/.aws_keys

export XDG_CONFIG_HOME=~/.config

#rbenv設定
set -x PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

#pyenv設定
status --is-interactive; and . (pyenv init -| psub)

# cd > ls
function cd
  builtin cd $argv
  ls -la
end

