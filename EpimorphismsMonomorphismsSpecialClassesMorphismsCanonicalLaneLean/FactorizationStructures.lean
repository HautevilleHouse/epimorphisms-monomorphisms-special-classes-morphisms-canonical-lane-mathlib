import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure FactorizationStructurePackage (A : AdmissibleClass) where
  epiMonoFactorization : Prop
  essentialImage : Prop
  factorizationUniqueness : Prop

structure FactorizationStructureEvidence {A : AdmissibleClass} (P : FactorizationStructurePackage A) where
  epiMonoFactorizationClosed : P.epiMonoFactorization
  essentialImageClosed : P.essentialImage
  factorizationUniquenessClosed : P.factorizationUniqueness

def FactorizationStructureClosed {A : AdmissibleClass} (P : FactorizationStructurePackage A) : Prop :=
  P.epiMonoFactorization ∧ P.essentialImage ∧ P.factorizationUniqueness

theorem factorization_structure_closed_from_evidence
    {A : AdmissibleClass} (P : FactorizationStructurePackage A) 
    (E : FactorizationStructureEvidence P) : FactorizationStructureClosed P :=
  And.intro E.epiMonoFactorizationClosed (And.intro E.essentialImageClosed E.factorizationUniquenessClosed)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
