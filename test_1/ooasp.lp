% class instantiation if we have subclass 
% ooasp_isa(I,CLASS,CID+1) :-ooasp_isa(I,SUBCLASS,CID), ooasp_subclass(V,SUBCLASS,CLASS), ooasp_configuration(V,I).

% not_object(1..5). % Assuming a maximum of 100 objects, adjust as needed
% next_id(1).

% % Define a rule to create an object if it doesn't exist yet
% ooasp_isa("inst1", "ClassA", ID) :- not_object(ID), next_id(ID), ID <= 100. % Adjust the maximum ID as needed
% 1 { ooasp_isa("inst1", "ClassA", ID) } 1 :- next_id(ID), ID <= 100.

% gives an error if max cardinality is broken 
 :-
  ooasp_assoc(M,A,C1,C1MIN,C1MAX,C2,C2MIN,C2MAX),
  ooasp_instantiation(M,I),
  ooasp_isa(I,C1,O1),
  {ooasp_associated(I,A,O1,O2) : ooasp_isa(I,C2,O2)} = COUNT,
  COUNT > C2MAX.

% gives an error if min cardinality is broken 
:-
  ooasp_assoc(M, A, C1, C1MIN, C1MAX, C2, C2MIN, C2MAX),
  ooasp_instantiation(M, I),
  ooasp_isa(I, C1, O1),
  {ooasp_associated(I, A, O1, O2) : ooasp_isa(I, C2, O2)} = COUNT,
  COUNT < C2MIN.


