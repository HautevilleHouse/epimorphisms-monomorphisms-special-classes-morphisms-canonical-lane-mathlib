import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean.MorphismDomainObjects
import HautevilleHouse.EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean.MonomorphismSpecialClasses

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure MorphismCategoryData where
  objects : Type u
  morphisms : (A B : objects) → Type v
  identityMorphism : (A : objects) → morphisms A A
  compositionMorphism : {A B C : objects} → morphisms A B → morphisms B C → morphisms A C
  categoryAssociativity : Prop
  categoryIdentityLeft : Prop
  categoryIdentityRight : Prop

def MorphismCategoryClosed (C : MorphismCategoryData) : Prop :=
  C.categoryAssociativity ∧ C.categoryIdentityLeft ∧ C.categoryIdentityRight

structure MorphismCategoryEvidence (C : MorphismCategoryData) where
  associativityClosed : C.categoryAssociativity
  identityLeftClosed : C.categoryIdentityLeft
  identityRightClosed : C.categoryIdentityRight

theorem morphism_category_closed_from_evidence (C : MorphismCategoryData) (E : MorphismCategoryEvidence C) :
    MorphismCategoryClosed C :=
  And.intro E.associativityClosed (And.intro E.identityLeftClosed E.identityRightClosed)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse