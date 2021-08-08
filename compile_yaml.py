import yaml,json

NCOL = 2

for infile in ["_data/students.yml"]:
    outfile= infile.replace("/","/zout_").replace(".yml",".json")

    d = yaml.load(open(infile))
    for i,x in enumerate(d):
        x['row_index'] = i//NCOL
        x['new_row'] = (i//NCOL == i/NCOL)
        x['need_to_close_row'] = x['new_row'] and i>0
    with open(outfile,'w') as outfp:
        # yaml.dump(d, outfp)
        json.dump(d, outfp)

