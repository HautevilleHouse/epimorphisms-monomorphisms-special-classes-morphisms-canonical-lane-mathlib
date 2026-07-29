import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure MonomorphismClassificationPackage {O : MorphismObject} (M : MorphismFamily O) where
  monomorphismCharacterization : Prop
  injectivityCondition : Prop
  cancellativeCondition : Prop
  monomorphismPreservation : Prop

structure MonomorphismClassificationEvidence {O : MorphismObject} {M : MorphismFamily O}
    (Mono : MonomorphismClassificationPackage M) where
  monomorphismCharacterizationClosed : Mono.monomorphismCharacterization
  injectivityConditionClosed : Mono.injectivityCondition
  cancellativeConditionClosed : Mono.cancellativeCondition
  monomorphismPreservationClosed : Mono.monomorphismPreservation

def MonomorphismClassificationClosed {O : MorphismObject} {M : MorphismFamily O}
    (Mono : MonomorphismClassificationPackage M) : Prop :=
  Mono.monomorphismCharacterization ∧ Mono.injectivityCondition ∧
  Mono.cancellativeCondition ∧ Mono.monomorphismPreservation

theorem monomorphism_classification_closed_from_evidence
    {O : MorphismObject} {M : MorphismFamily O}
    (Mono : MonomorphismClassificationPackage M) 
    (Ev : MonomorphismClassificationEvidence Mono) : MonomorphismClassificationClosed Mono := by
  exact And.intro Ev.monomorphismCharacterizationClosed
    (And.intro Ev.injectivityConditionClosed
      (And.intro Ev.cancellativeConditionClosed Ev.monomorphismPreservationClosed))

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
