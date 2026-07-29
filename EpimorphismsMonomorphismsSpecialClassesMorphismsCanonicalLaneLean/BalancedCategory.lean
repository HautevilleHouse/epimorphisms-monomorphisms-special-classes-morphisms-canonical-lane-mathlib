import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure BalancedCategoryPackage (A : AdmissibleClass) where
  balancedProperty : Prop
  isoCharacterization : Prop
  epiAndMonoImpliesIso : Prop

structure BalancedCategoryEvidence {A : AdmissibleClass} (P : BalancedCategoryPackage A) where
  balancedPropertyClosed : P.balancedProperty
  isoCharacterizationClosed : P.isoCharacterization
  epiAndMonoImpliesIsoClosed : P.epiAndMonoImpliesIso

def BalancedCategoryClosed {A : AdmissibleClass} (P : BalancedCategoryPackage A) : Prop :=
  P.balancedProperty ∧ P.isoCharacterization ∧ P.epiAndMonoImpliesIso

theorem balanced_category_closed_from_evidence
    {A : AdmissibleClass} (P : BalancedCategoryPackage A) 
    (E : BalancedCategoryEvidence P) : BalancedCategoryClosed P :=
  And.intro E.balancedPropertyClosed (And.intro E.isoCharacterizationClosed E.epiAndMonoImpliesIsoClosed)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
