#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""排版体例检查（详见仓库根目录的 STYLE.md）。

用法：
    python3 tools/check_style.py            # 检查 parts/ 下全部 .typ
    python3 tools/check_style.py a.typ b.typ

脚本只做提示，不修改文件；退出码为发现的问题条数（上限 1）。
"""
import os
import re
import sys
import glob

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PARTS = os.path.join(ROOT, "parts")

# 这些文件是原版英文的著录信息／书目／索引，沿用英文体例，不参与检查
EXEMPT = {"reference.typ", "index.typ", "copyright.typ", "cover.typ",
          "half_title.typ", "series.typ", "title.typ", "content.typ"}

# 需要屏蔽的区域：代码块、行内代码、数学、字符串字面量、注释、import、标题、标签
PROTECT = re.compile(
    r"```.*?```"
    r"|`[^`\n]*`"
    r"|\$[^$]*\$"
    r"|\"(?:[^\"\\\n]|\\.)*\""
    r"|^[ \t]*//[^\n]*$"
    r"|^[ \t]*#import[^\n]*$"
    r"|^[ \t]*=+ [^\n]*$"
    r"|<[^<>\n]{1,40}>",
    re.S | re.M,
)

CHECKS = [
    ("半角括号夹西文（中文正文中应使用全角）",
     r"[\u4e00-\u9fff”’》\*]\s*\((?![a-zA-Z]\)|[IVX]+\))[A-Za-z][^()\n]{0,60}\)"),
    ("中文后接半角冒号", r"[\u4e00-\u9fff”’]\s*:"),
    ("中文后接半角分号", r"[\u4e00-\u9fff”’]\s*;"),
    ("中文后接半角句点", r"[\u4e00-\u9fff”’]\s*\.(?!\.)"),
    ("ASCII 直双引号", r'"'),
    ("ASCII 单引号", r"(?<![A-Za-z])'|'(?![A-Za-z])"),
    ("全角前括号之前有空格", r"(?<=[A-Za-z0-9\u4e00-\u9fff\*”》）]) +（"),
    ("数字区间用了连字符，应改为连接号 –", r"(?<![-\d/A-Za-z.])\d{1,4}-\d{1,4}(?![-\d/])"),
    ("三点省略号，应改为 ……", r"[\u4e00-\u9fff]\s*(?<!\.)\.\.\.(?!\.)"),
    ("孤立的单破折号（中文破折号应为 ——）",
     r"[\u4e00-\u9fff]—(?!—)(?=[，。；：、？！”）])"),
    ("使用了 #strong[]／#emph[]，应改为 *…* / _…_", r"#(?:strong|emph)\["),
    ("残留的对话式措辞", r"准备好后请发|需要我(?:针对|为你)|要不要我|如果你愿意"),
    ("Typst 的 -- 连接号，请直接写 – 或 —", r"(?<![-])--(?![-])"),
]


def scan(path):
    name = os.path.basename(path)
    text = open(path, encoding="utf-8").read()
    masked = PROTECT.sub(lambda m: "\x00" * len(m.group(0)), text)
    found = []
    for title, pat in CHECKS:
        for m in re.finditer(pat, masked):
            line = text.count("\n", 0, m.start()) + 1
            ctx = text[max(0, m.start() - 30): m.end() + 20].replace("\n", "⏎")
            found.append((line, title, ctx))
    return name, sorted(found)


def main(argv):
    targets = argv[1:] or sorted(glob.glob(os.path.join(PARTS, "*.typ")))
    total = 0
    for path in targets:
        if os.path.basename(path) in EXEMPT:
            continue
        name, found = scan(path)
        if not found:
            continue
        print(f"\n=== {name} （{len(found)} 处）")
        for line, title, ctx in found:
            print(f"  {line:5d}  {title}\n         …{ctx}…")
        total += len(found)
    print(f"\n合计 {total} 处待确认。")
    return 1 if total else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
