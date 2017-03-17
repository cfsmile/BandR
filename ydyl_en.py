#! /usr/bin/python3
# coding=utf-8
# lucky.py - Web-scrape 'Belt and Road' related news in media press website.

import requests, sys, webbrowser, bs4, re

# prompt
print('searching...')

# css class where the content locates

# url = 'http://www.people.com.cn/'
# cls_content = '.list14 a'
url = 'http://www.hktdc.com/'
cls_content = '.bullet a'

res = requests.get(url)
res.encoding = res.apparent_encoding
try:
    res.raise_for_status()
except Exception as exc:
    print('There was a problem: %s' % (exc))

soup = bs4.BeautifulSoup(res.text, "html.parser")
linkElems = soup.select(cls_content)


# construct key words list from file, while stripping unwanted characters such as whitespace, \n etc.

# with open('kw_cn.txt','rt') as kw_file:
with open('kw_en.txt', 'rt') as kw_file:
    kw = [line.strip() for line in kw_file]

# Search each key words in every linkElems using list comprehension. Put linkElems item into a list if found.
ps = [lelm for lelm in linkElems for item in kw if re.search(str(item), str(lelm))]

print(ps)
print(kw)

# 将正则表达式编译成Pattern对象
# pattern = re.compile(r'[\u4e00-\u9fa5]+')


# write the search result into file, showing both the link and title

# with open('test.html', 'w') as the_file:
#    for o in ps:
#        the_file.write(str(o))
#        the_file.write("\n")

    #    for item in linkElems:
    # the_file.write(item.get('href'))
    # the_file.write(str(item.get('href') + ':' + item.get('title')) + '\n')


#######################
# print(linkElems)
# http://blog.csdn.net/zhyh1435589631/article/details/51718914?locationNum=7&fps=1
# write the web-scraped content into html file

# soup.find_all(text=["Tillie", "Elsie", "Lacie"])
# http://blog.csdn.net/lan_se_ye_ge/article/details/39051103

# http://blog.csdn.net/tao_627/article/details/51019972

# print u"%s" % (var1,)
