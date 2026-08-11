import os

def update_markdown_symbols(file_path):
    try:
        # 1. 读取文件内容
        with open(file_path, 'r', encoding='utf-8') as file:
            content = file.read()
        
        # 2. 按要求进行替换：
        # 先把 ** 换成 ||
        content = content.replace('**', '||')
        # 再把 * 换成 _
        content = content.replace('*', '_')
        # 最后把 || 换回 *
        content = content.replace('||', '*')
        
        # 3. 把修改后的内容写回原文件
        with open(file_path, 'w', encoding='utf-8') as file:
            file.write(content)
            
        print(f"成功处理并更新文件: {file_path}")
        
    except FileNotFoundError:
        print(f"错误: 找不到文件 {file_path}，请确认路径是否正确。")
    except Exception as e:
        print(f"发生未知错误: {e}")

if __name__ == "__main__":
    # 指定文件路径
    file_path = 'assets/temp.md'
    update_markdown_symbols(file_path)