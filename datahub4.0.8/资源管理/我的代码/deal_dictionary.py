# 剔除字典对象中value为None的key
def pop_key_by_empty(dic):
    for x in list(dic.keys()):
        if dic[x] == '':
            dic.pop(x)
    return dic

# 剔除字典对象中value为指定关键字的key
def pop_key_by_str(dic,key_str):
    for x in list(dic.keys()):
        if dic[x] == key_str:
            dic.pop(x)
    return dic


