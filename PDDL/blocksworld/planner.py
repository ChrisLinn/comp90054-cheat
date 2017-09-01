import urllib2, json, sys

data = {'domain': open(sys.argv[1], 'r').read(),
        'problem': open(sys.argv[2], 'r').read()}

req = urllib2.Request('http://solver.planning.domains/solve')
req.add_header('Content-Type', 'application/json')
resp = json.loads(urllib2.urlopen(req, json.dumps(data)).read())

with open(sys.argv[3], 'w') as f:
    f.write('\n'.join([act['name'] for act in resp['result']['plan']])) 
