import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure ExtremalMorphismPackage where
  category : Type u
  extremalEpimorphismProperty : (category → category → category) → Prop
  extremalMonomorphismProperty : (category → category → category) → Prop
  extremalEpiIsRegular : Prop
  extremalMonoIsRegular : Prop
  factorizationThroughExtremal : Prop

structure ExtremalMorphismEvidence (E : ExtremalMorphismPackage) where
  extremalEpiIsRegularClosed : E.extremalEpiIsRegular
  extremalMonoIsRegularClosed : E.extremalMonoIsRegular
  factorizationThroughExtremalClosed : E.factorizationThroughExtremal

def ExtremalMorphismClosed (E : ExtremalMorphismPackage) : Prop :=
  E.extremalEpiIsRegular ∧ E.extremalMonoIsRegular ∧ E.factorizationThroughExtremal

theorem extremal_morphism_closed_from_evidence (E : ExtremalMorphismPackage) (Ev : ExtremalMorphismEvidence E) :
    ExtremalMorphismClosed E := by
  exact And.intro Ev.extremalEpiIsRegularClosed (And.intro Ev.extremalMonoIsRegularClosed Ev.factorizationThroughExtremalClosed)

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
