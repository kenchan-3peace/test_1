import io
import sys
import xlrd
import random
import os
from bottle import route, run, template, static_file
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

@route("/")
def Typing():
    # タイピング文字の出力
    xl_bk = xlrd.open_workbook("teki.xlsx")
    #シートをインデックスから取得する
    xl_sh = xl_bk.sheet_by_index(0)
    len = xl_sh.nrows -1
    num = random.randint(0,len)
    #シートの中のセルの中身を表示suru
    text = xl_sh.cell(num,0).value
    teki = xl_sh.cell(num,1).value
    xl_bk = xlrd.open_workbook("waza.xlsx")
    xl_sh = xl_bk.sheet_by_index(0)
    len = xl_sh.nrows -1
    num = random.randint(0,len)
    waza1 = xl_sh.cell(num,0).value
    waza2 = xl_sh.cell(num,1).value
    return template('typing', text=text, teki=teki, waza1=waza1, waza2=waza2)

@route("/img/<filename>")
def imgdir(filename):
    return static_file(filename, root='./img/')

run(host="0.0.0.0", debug=True, port=int(os.environ.get("PORT", 5001)))
