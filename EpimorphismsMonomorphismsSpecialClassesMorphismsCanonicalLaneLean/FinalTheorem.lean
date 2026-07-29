import canonicalLaneMathlib.AdmissibleClass
import EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean.ExtremalMorphisms

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

def ConstrainedMorphismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_morphism_endgame (A : AdmissibleClass) :
    ConstrainedMorphismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
