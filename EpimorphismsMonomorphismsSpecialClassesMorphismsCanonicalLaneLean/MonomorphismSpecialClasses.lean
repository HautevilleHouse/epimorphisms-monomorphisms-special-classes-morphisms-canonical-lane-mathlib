import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure MonomorphismObject where
  source : Type u
  target : Type v
  morphism : source → target
  monoProperty : ∀ (g h : source → source), morphism ∘ g = morphism ∘ h → g = h

structure SpecialMorphismClass where
  name : String
  property : Prop

def monomorphismWitnessClosed (M : MonomorphismObject) : Prop :=
  ∀ (g h : M.source → M.source), M.morphism ∘ g = M.morphism ∘ h → g = h

theorem monomorphism_witness_closed_from_monoProperty (M : MonomorphismObject) :
    monomorphismWitnessClosed M :=
  M.monoProperty

def specialMorphismClassClosed (C : SpecialMorphismClass) : Prop :=
  C.property

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse