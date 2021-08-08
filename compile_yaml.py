import yaml,json,itertools

NCOL = 4

person_groups = ['faculty','postdocs','students']
out = {}

# for infile in ["_data/students.yml"]:
for g in person_groups:
    infile = "_data/{}.yml".format(g)

    d = yaml.load(open(infile))
    grouped = itertools.groupby(enumerate(d), lambda x: x[0]//NCOL)
    outrows = [ [person for (i,person) in row] for rowid,row in grouped ]
    out[g] = outrows

    # outfile= infile.replace("/","/zout_").replace(".yml",".json")
    # with open(outfile,'w') as outfp:
    #     # yaml.dump(d, outfp)
    #     json.dump(outrows, outfp)
with open("_data/zcompiled.json",'w') as fp:
    json.dump(out,fp)
