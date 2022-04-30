from multiprocessing import Pool
def add_line(i):
    if i%10**10==0:
        print(i)
    return "{0:b}".format(i).rjust(len(inputs_ports), "0")
path = input("Path to the template file: ")
minpulse = input("Minimum pulse: ")

cname='.'.join(path.split('\\')[-1].split('/')[-1].split('.')[:-1])
minputlsetext="CONSTANT Min_Pulse : TIME := {0};".format(minpulse)
with open(path, "r") as f:
    text = f.read()

inputs_ports = []
for line in text.splitlines():
    if "in s" in line.lower():
        if "vector" in line.lower():
            ran = [
                int(x)
                for x in line[line.find("(") + 1 : line.find(")")].split("DOWNTO")
            ]
            names = [
                line.split(":")[0].strip() + "(" + str(x) + ")"
                for x in range(ran[1], ran[0] + 1)
            ]
        else:
            names = [x.strip() for x in line.strip().split(":")[0].split(",")]
        inputs_ports += names
print(" | ".join(inputs_ports))
combinations = []
indexes = list(range(0,2 ** len(inputs_ports),2**22))
with Pool(15) as p:
    combinations=p.map(add_line,indexes)
    # print(" | ".join(combinations[-1]) + " " + str(i))
print()
print('='*100)
print('='*100)
print()
test=[]
for comb in combinations:
    test+=['		WAIT FOR Min_Pulse * 1.1;\n		('+','.join(inputs_ports)+') <= "'+comb+'";\n']
final=''
found_begin=False
for line in text.split('\n'):
    if found_begin & (';' in line):
        final+=line+'\n'+'stim_proc : PROCESS\n	BEGIN\n'+\
            '\n'.join(test)+\
            '		WAIT FOR Min_Pulse * 1.1;\n'+\
            '		WAIT;\n\n'+\
            '	END PROCESS;\n'+\
            text.split('\n')[-1]
        break
    elif 'BEGIN' in line:
        found_begin=True
        final+=line+'\n'
    else:
        final+=line+'\n'

with open(path,'w') as f:
    f.write(final)

print(final)