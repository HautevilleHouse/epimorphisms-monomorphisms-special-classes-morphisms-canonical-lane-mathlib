import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure SpecialMorphismPropertiesPackage {O : MorphismObject} (M : MorphismFamily O) where
  retractionCharacterization : Prop
  coretractionCharacterization : Prop
  isomorphismCharacterization : Prop
  extremalEpimorphismCharacterization : Prop
  extremalMonomorphismCharacterization : Prop

structure SpecialMorphismPropertiesEvidence {O : MorphismObject} {M : MorphismFamily O}
    (S : SpecialMorphismPropertiesPackage M) where
  retractionCharacterizationClosed : S.retractionCharacterization
  coretractionCharacterizationClosed : S.coretractionCharacterization
  isomorphismCharacterizationClosed : S.isomorphismCharacterization
  extremalEpimorphismCharacterizationClosed : S.extremalEpimorphismCharacterization
  extremalMonomorphismCharacterizationClosed : S.extremalMonomorphismCharacterization

def SpecialMorphismPropertiesClosed {O : MorphismObject} {M : MorphismFamily O}
    (S : SpecialMorphismPropertiesPackage M) : Prop :=
  S.retractionCharacterization ∧ S.coretractionCharacterization ∧
  S.isomorphismCharacterization ∧ S.extremalEpimorphismCharacterization ∧
  S.extremalMonomorphismCharacterization

theorem special_morphism_properties_closed_from_evidence
    {O : MorphismObject} {M : MorphismFamily O}
    (S : SpecialMorphismPropertiesPackage M) (Ev : SpecialMorphismPropertiesEvidence S) :
    SpecialMorphismPropertiesClosed S := by
  exact And.intro Ev.retractionCharacterizationClosed
    (And.intro Ev.coretractionCharacterizationClosed
      (And.intro Ev.isomorphismCharacterizationClosed
        (And.intro Ev.extremalEpimorphismCharacterizationClosed
          Ev.extremalMonomorphismCharacterizationClosed)))

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse
