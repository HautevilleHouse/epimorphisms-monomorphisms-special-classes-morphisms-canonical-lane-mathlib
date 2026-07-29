import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure SpecialMorphismClassesPackage (A : AdmissibleClass) where
  isoClass : Prop
  splitEpiClass : Prop
  splitMonoClass : Prop
  retractClass : Prop

structure SpecialMorphismClassesEvidence {A : AdmissibleClass} (P : SpecialMorphismClassesPackage A) where
  isoClassClosed : P.isoClass
  splitEpiClassClosed : P.splitEpiClass
  splitMonoClassClosed : P.splitMonoClass
  retractClassClosed : P.retractClass

def SpecialMorphismClassesClosed {A : AdmissibleClass} (P : SpecialMorphismClassesPackage A) : Prop :=
  P.isoClass ∧ P.splitEpiClass ∧ P.splitMonoClass ∧ P.retractClass

theorem special_morphism_classes_closed_from_evidence
    {A : AdmissibleClass} (P : SpecialMorphismClassesPackage A) 
    (E : SpecialMorphismClassesEvidence P) : SpecialMorphismClassesClosed P :=
  And.intro E.isoClassClosed (And.intro E.splitEpiClassClosed 
    (And.intro E.splitMonoClassClosed E.retractClassClosed))

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
