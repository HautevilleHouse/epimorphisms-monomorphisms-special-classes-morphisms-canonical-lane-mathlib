import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure EpimorphismPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functorAction : sourceCategory → targetCategory
  epimorphismProperty : (sourceCategory → targetCategory) → Prop
  epimorphismPreserved : Prop
  compositionClosed : Prop
  cancellationProperty : Prop

structure EpimorphismEvidence (E : EpimorphismPackage) where
  epimorphismPreservedClosed : E.epimorphismPreserved
  compositionClosedClosed : E.compositionClosed
  cancellationPropertyClosed : E.cancellationProperty

def EpimorphismClosed (E : EpimorphismPackage) : Prop :=
  E.epimorphismPreserved ∧ E.compositionClosed ∧ E.cancellationProperty

theorem epimorphism_closed_from_evidence (E : EpimorphismPackage) (Ev : EpimorphismEvidence E) :
    EpimorphismClosed E := by
  exact And.intro Ev.epimorphismPreservedClosed (And.intro Ev.compositionClosedClosed Ev.cancellationPropertyClosed)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
