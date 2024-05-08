import os
import sys
import re
input_str = sys.argv[1]
words = input_str.split(' ')
output = ''
for word in words:
	marker = max(min(2,len(word)),int(len(word)/4))
	output += "<b>" + word[:marker] + '</b>' + word[marker:] + ' '
#output = re.escape(output)
open('ENV','a').write(f'RENDERED_TEXT={output}')
