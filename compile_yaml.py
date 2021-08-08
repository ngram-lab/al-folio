import yaml,json

NCOL = 3

for infile in ["_data/students.yml"]:
    outfile= infile.replace("/","/zout_").replace(".yml",".json")

    d = yaml.load(open(infile))
    grouped = itertools.groupby(enumerate(d), lambda (i,x): i)
    outrows = [ row for rowid,row in grouped ]
    with open(outfile,'w') as outfp:
        # yaml.dump(d, outfp)
        json.dump(outrows, outfp)

