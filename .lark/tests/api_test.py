import requests as r;

ret = r.get('http://127.0.0.1:6666/');
print(ret.text)
