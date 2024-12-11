from collections import defaultdict
import yaml
dd = yaml.safe_load(open("affil.yml"))
# print(dd)

bigout = defaultdict(list)

for k in dd.keys():
    if not dd[k]: continue

    for mm in dd[k]['members']:
        first = mm['name'].split()[0]
        last = mm['name'].split()[-1]
        url = mm['website']
        out = {'firstname':[first], 'url':url}
        # if last in bigout: print("WTF",last)
        bigout[last].append(out)

bigout = dict(bigout)
print(yaml.dump(bigout))
