% Partial instantiation
ooasp_instantiation("v1", "inst1").
ooasp_isa("inst1", "ClassA", "object1").
ooasp_isa("inst1", "ClassB", "object2").
ooasp_isa("inst1", "ClassB", "object3").
ooasp_isa("inst1", "ClassC", "object4").
ooasp_isa("inst1", "ClassC", "object5").

% % Associations
ooasp_associated("inst1", "association", "object1", "object2").
ooasp_associated("inst1", "association", "object1", "object3").
ooasp_associated("inst1", "association", "object1", "object4").
ooasp_associated("inst1", "association", "object1", "object5").

#show ooasp_associated/4.
