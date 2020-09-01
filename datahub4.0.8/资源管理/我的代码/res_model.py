import json


# 根据搜索条件检查搜索结果
def check_res_list(res_string, **kw):
    res_list = json.loads(res_string)
    for res in res_list:
        if "pids" in kw.keys():
            pids_list = list(map(int, str(kw['pids']).split(',')))
            if res['pid'] not in pids_list:
                return False
        if "res_name" in kw.keys() and kw['res_name'] != '':
            if kw['res_name'] not in res['resName']:
                return False
        if "res_type" in kw.keys() and kw['res_type'] != '':
            if res['type']['id'] != int(kw['res_type']):
                return False
    return True

