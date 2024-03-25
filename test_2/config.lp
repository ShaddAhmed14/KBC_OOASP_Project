ooasp_class("v1","HwObject").
ooasp_class("v1","Frame").
ooasp_class("v1","Module").
ooasp_class("v1","ModuleA"). ooasp_class("v1","ModuleB").
ooasp_class("v1","Element").
ooasp_class("v1","ElementA"). ooasp_class("v1","ElementB").
% class inheritance
ooasp_subclass("v1","Frame","HwObject").
ooasp_subclass("v1","Module","HwObject").
ooasp_subclass("v1","Element","HwObject").
ooasp_subclass("v1","ElementA","Element").
ooasp_subclass("v1","ElementB","Element").
ooasp_subclass("v1","ModuleA","Module").
ooasp_subclass("v1","ModuleB","Module").
% attributes and associations
% class Frame
ooasp_assoc("v1","Frame_modules","Frame",1,1,"Module",0,5).
% class Module
ooasp_attribute("v1","Module","position","integer").
ooasp_attribute_minInclusive("v1","Module","position",1).
ooasp_attribute_maxInclusive("v1","Module","position",5).
% class Element
ooasp_assoc("v1","Element_module","Element",1,1,"Module",1,1).

% Module A only maps to Element A. 
ooasp_association(I, "ModuleA", ID1, "ElementA", ID2) :- ooasp_isa(I, "ModuleA", ID1), ooasp_isa(I, "ElementA", ID2).
ooasp_association(I, "ModuleB", ID1, "ElementB", ID2) :- ooasp_isa(I, "ModuleB", ID1), ooasp_isa(I, "ElementB", ID2).
ooasp_association(I, "Frame", ID1, "ModuleA", ID2) :- ooasp_isa(I, "ModuleA", ID1), ooasp_isa(I, "Frame", ID2).
ooasp_association(I, "Frame", ID1, "ModuleB", ID2) :- ooasp_isa(I, "ModuleB", ID1), ooasp_isa(I, "Frame", ID2).

#show ooasp_association/5.
% #show ooasp_isa/3.

