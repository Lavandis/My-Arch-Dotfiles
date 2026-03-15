starship init fish | source
if status is-interactive
    # 1. 去掉 Fish 默认的欢迎语 (可选)
    set fish_greeting

    # 2. 启动 Starship (原本的装修工)
    starship init fish | source

    # 3. 【关键！】加载 End-4 的动态颜色和透明度序列
    # 这就是你丢失“玄学”的地方
    # ...
    # 只有在【不是】Tmux 的时候才加载颜色脚本
    # 这样既保留了颜色（继承自外层），又不会打碎 Tmux 里的气泡
    if not set -q TMUX
        if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
            cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        end
    end
    # ...
    # 4. 你的常用别名 (建议保留，很方便)
    alias pamcan pacman
    alias ls 'eza --icons'
    alias q 'qs -c ii'
end
fish_vi_key_bindings
