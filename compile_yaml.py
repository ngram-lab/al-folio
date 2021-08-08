import yaml,json

NCOL = 3

for infile in ["_data/students.yml"]:
    outfile= infile.replace("/","/zout_").replace(".yml",".json")

    d = yaml.load(open(infile))
    for i,x in enumerate(d):
        x['row_index'] = i//NCOL
    with open(outfile,'w') as outfp:
        # yaml.dump(d, outfp)
        json.dump(d, outfp)
