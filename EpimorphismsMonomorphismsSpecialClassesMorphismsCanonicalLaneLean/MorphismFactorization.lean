import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure MorphismFactorizationPackage where
  category : Type u
  factorizationProperty : (category → category → category) → Prop
  epiMonoFactorization : Prop
  uniqueFactorization : Prop
  functorialFactorization : Prop

structure MorphismFactorizationEvidence (F : MorphismFactorizationPackage) where
  epiMonoFactorizationClosed : F.epiMonoFactorization
  uniqueFactorizationClosed : F.uniqueFactorization
  functorialFactorizationClosed : F.functorialFactorization

def MorphismFactorizationClosed (F : MorphismFactorizationPackage) : Prop :=
  F.epiMonoFactorization ∧ F.uniqueFactorization ∧ F.functorialFactorization

theorem morphism_factorization_closed_from_evidence (F : MorphismFactorizationPackage) (Ev : MorphismFactorizationEvidence F) :
    MorphismFactorizationClosed F := by
  exact And.intro Ev.epiMonoFactorizationClosed (And.intro Ev.uniqueFactorizationClosed Ev.functorialFactorizationClosed)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
