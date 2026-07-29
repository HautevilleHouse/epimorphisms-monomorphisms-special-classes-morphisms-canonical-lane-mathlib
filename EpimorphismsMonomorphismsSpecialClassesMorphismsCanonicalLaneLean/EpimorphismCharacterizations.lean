import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure EpimorphismCharacterizationPackage (A : AdmissibleClass) where
  epiPresent : Prop
  epiCancelRight : Prop
  epiDetectable : Prop

structure EpimorphismCharacterizationEvidence {A : AdmissibleClass} (P : EpimorphismCharacterizationPackage A) where
  epiPresentClosed : P.epiPresent
  epiCancelRightClosed : P.epiCancelRight
  epiDetectableClosed : P.epiDetectable

def EpimorphismCharacterizationClosed {A : AdmissibleClass} (P : EpimorphismCharacterizationPackage A) : Prop :=
  P.epiPresent ∧ P.epiCancelRight ∧ P.epiDetectable

theorem epimorphism_characterization_closed_from_evidence
    {A : AdmissibleClass} (P : EpimorphismCharacterizationPackage A) 
    (E : EpimorphismCharacterizationEvidence P) : EpimorphismCharacterizationClosed P :=
  And.intro E.epiPresentClosed (And.intro E.epiCancelRightClosed E.epiDetectableClosed)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
