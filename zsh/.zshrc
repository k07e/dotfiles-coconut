data_dir="$(cd "${ZDOTDIR}/../.." && pwd)"
declare -A ZINIT=(
  [BIN_DIR]="${data_dir}/zsh/cache/zinit/bin"
  [COMPLETIONS_DIR]="${data_dir}/zsh/cache/zinit/completions"
  [HOME_DIR]="${data_dir}/zsh/cache/zinit"
  [PLUGINS_DIR]="${data_dir}/zsh/cache/zinit/plugins"
  [SNIPPETS_DIR]="${data_dir}/zsh/cache/zinit/snippets"
  [ZCOMPDUMP_PATH]="${data_dir}/zsh/files/.zcompdump"
)
ZPFX="${data_dir}/zsh/cache/zinit/polaris"
. "${ZINIT[BIN_DIR]}/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
