# oh-my-i3

带给你一个不一样的i3wm！

![0](https://github.com/JH623/screenshot/blob/master/oh-my-i3/0.png)

## 依赖

- 调用conky作为i3bar输出
- dmenu启动程序
- feh显示壁纸
- xcompmgr透明插件（可选）
- infinality字体渲染美化（可选）

```sh
sudo pacman -S feh dmenu conky 
sudo pacman -S fcitx fcitx-rime fcitx-configtool
```

# 安装

```sh
git clone this ~/.config/i3
cp .xinitrc ~
```

安装字体

```sh
mkdir ~/.fonts
cp -r font-awesome ~/.fonts
mkfontscale
mkfontdir
```

修改config，conky的相关配置！

## 字体

- Monaco:一个很好看的等宽英文字体，非常适用于写代码，若显示不佳请用infinality渲染
- font-awesome:开源的图标字体，可通过简单地复制粘贴使用，具体查看:
http://fortawesome.github.io/Font-Awesome/cheatsheet/

## 安装

先行安装所需程序:i3 dmenu feh

```bash
# 克隆oh-my-i3到本地
git clone https://github.com/ID1258/oh-my-i3.git
# cd 到oh-my-i3目录
cd oh-my-i3
# 安装
sh install.sh
```
## 

若已运行i3需要 `Alt+Shift+R` 重载入配置

## 快捷键

- $mod键默认为windows键
- $mod+Enter打开终端
- $mod+1~10切换工作区
- $mod+w/s/a/d 上下左右切换窗口
- 更多请查看~/.config/i3/config，并根据自己的习惯进行更改

![1](https://github.com/JH623/screenshot/blob/master/oh-my-i3/1.png)

## 更多的特性：

- dmenu样式：与ibar统一样式，字体支持，等宽覆盖。请先更新至4.6版本。
- 图标字体：更直观更美观。
- 智能启动：添加智能启动脚本st（虽然很笨），简化启动，避免重复运行。
- 更多:靠你们来拯救世界了！

![2](https://github.com/JH623/screenshot/blob/master/oh-my-i3/2.png)

## 版本更新

- 2015/12/16 v1.1 兼容conky1.10并优化配置,优化st脚本和安装脚本

                                                  Allen Qiu
