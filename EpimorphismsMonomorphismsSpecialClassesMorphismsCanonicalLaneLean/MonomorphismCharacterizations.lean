import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure MonomorphismCharacterizationPackage (A : AdmissibleClass) where
  monoPresent : Prop
  monoCancelLeft : Prop
  monoDetectable : Prop

structure MonomorphismCharacterizationEvidence {A : AdmissibleClass} (P : MonomorphismCharacterizationPackage A) where
  monoPresentClosed : P.monoPresent
  monoCancelLeftClosed : P.monoCancelLeft
  monoDetectableClosed : P.monoDetectable

def MonomorphismCharacterizationClosed {A : AdmissibleClass} (P : MonomorphismCharacterizationPackage A) : Prop :=
  P.monoPresent ∧ P.monoCancelLeft ∧ P.monoDetectable

theorem monomorphism_characterization_closed_from_evidence
    {A : AdmissibleClass} (P : MonomorphismCharacterizationPackage A) 
    (E : MonomorphismCharacterizationEvidence P) : MonomorphismCharacterizationClosed P :=
  And.intro E.monoPresentClosed (And.intro E.monoCancelLeftClosed E.monoDetectableClosed)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
