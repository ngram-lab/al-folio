import yaml,json,itertools

NCOL = 4

for infile in ["_data/students.yml"]:
    outfile= infile.replace("/","/zout_").replace(".yml",".json")

    d = yaml.load(open(infile))
    grouped = itertools.groupby(enumerate(d), lambda x: x[0]//NCOL)
    outrows = [ [person for (i,person) in row] for rowid,row in grouped ]
    with open(outfile,'w') as outfp:
        # yaml.dump(d, outfp)
        json.dump(outrows, outfp)

