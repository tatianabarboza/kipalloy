

some sig individual{instanciaot1st : lone ot1st}

some sig ot2nd{powertypeot1st : lone ot1st}

some sig ot1st{powertypeindividual : lone individual,instanciaot2nd : lone ot2nd}

some sig ufoacategory{
especializaot1st : lone ot1st,
instanciaot2nd : lone ot2nd}

some sig ufocphysicalagent{
especializaindividual : lone individual,
instanciaot1st : lone ot1st}

some sig ufocatomicaction{
especializaindividual : lone individual,
instanciaot1st : lone ot1st}

some sig agentcontributiontype{
categorizeimpactagent : lone impactagent}

some sig agenttype{}

some sig impactagent{}

some sig knowledgeintensiveactivity{}

some sig employeetype{
especializaagentcontributiontype : lone agentcontributiontype,
categorizeimpactagentemployee : lone employee,
categorizeimpactagenttechnician : lone technician,
categorizeimpactagentclient : lone client,
categorizeimpactagentcall_center : lone call_center}

some sig employee{
instanciaemployeetype : lone employeetype,
especializaimpactagent : lone impactagent}

some sig technician{
instanciaemployeetype : lone employeetype,
especializaemployee : lone employee,
especializaimpactagent : lone impactagent}

some sig client{
instanciatechnician : lone technician,
especializaimpactagent : lone impactagent,
especializaimpactagent : lone impactagent}

some sig call_center{
instanciaclient : lone client,
especializaimpactagent : lone impactagent,
especializaimpactagent : lone impactagent}

some sig make_a_technical_visit{
instanciacall_center : lone call_center,
especializaimpactagent : lone impactagent,
especializaknowledgeintensiveactivity : lone knowledgeintensiveactivity}

assert validacao{
all
joao : client,
technical_visit_occurred_at_april_20__2018_by_andre : make_a_technical_visit,
tiago : call_center,
andre : technician}

check validacao for 1 individual,
1 ot2nd,
1 ot1st,
1 employeetype
,1 employee
,1 technician
,1 client
,1 call_center
,1 make_a_technical_visit
,1 agentcontributiontype
,1 agenttype
,1 impactagent
,1 knowledgeintensiveactivity
,1 ufoacategory
,1 ufocphysicalagent
,1 ufocatomicaction
