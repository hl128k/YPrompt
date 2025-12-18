import re

# 从数据库文件中提取的share_code
share_codes = ["npDsL2x5iJZh", "V0RrauyT3_hQ", "Hrwerj7klzCu", "ipC7XhETs1wZ"]

# 读取strings输出
with open('yprompt.db.corrupted', 'rb') as f:
    content = f.read()

# 尝试为每个share_code找到完整记录
for code in share_codes:
    print(f"\n==== {code} ====")
    idx = content.find(code.encode())
    if idx != -1:
        # 提取前后2KB数据
        start = max(0, idx - 2000)
        end = min(len(content), idx + 2000)
        chunk = content[start:end]
        
        # 查找可打印字符串
        text = chunk.decode('utf-8', errors='ignore')
        
        # 查找JSON片段
        json_match = re.search(r'\[{.*?"role".*?"content".*?}\]', text, re.DOTALL)
        if json_match:
            print(f"Messages JSON: {json_match.group()[:200]}...")
        
        # 查找title
        title_match = re.search(r'"([^"]{5,100})"', text)
        if title_match:
            print(f"可能的title: {title_match.group(1)}")

