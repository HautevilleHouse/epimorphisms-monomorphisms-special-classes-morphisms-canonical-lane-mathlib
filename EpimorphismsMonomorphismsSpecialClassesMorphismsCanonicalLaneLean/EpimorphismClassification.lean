import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure EpimorphismClassificationPackage {O : MorphismObject} (M : MorphismFamily O) where
  epimorphismCharacterization : Prop
  surjectivityCondition : Prop
  cancellativeCondition : Prop
  epimorphismPreservation : Prop

structure EpimorphismClassificationEvidence {O : MorphismObject} {M : MorphismFamily O}
    (E : EpimorphismClassificationPackage M) where
  epimorphismCharacterizationClosed : E.epimorphismCharacterization
  surjectivityConditionClosed : E.surjectivityCondition
  cancellativeConditionClosed : E.cancellativeCondition
  epimorphismPreservationClosed : E.epimorphismPreservation

def EpimorphismClassificationClosed {O : MorphismObject} {M : MorphismFamily O}
    (E : EpimorphismClassificationPackage M) : Prop :=
  E.epimorphismCharacterization ∧ E.surjectivityCondition ∧
  E.cancellativeCondition ∧ E.epimorphismPreservation

theorem epimorphism_classification_closed_from_evidence
    {O : MorphismObject} {M : MorphismFamily O}
    (E : EpimorphismClassificationPackage M) 
    (Ev : EpimorphismClassificationEvidence E) : EpimorphismClassificationClosed E := by
  exact And.intro Ev.epimorphismCharacterizationClosed
    (And.intro Ev.surjectivityConditionClosed
      (And.intro Ev.cancellativeConditionClosed Ev.epimorphismPreservationClosed))

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
