import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure EpimorphismObject where
  source : Type u
  target : Type v
  morphism : source → target
  epiProperty : ∀ (g h : target → target), g ∘ morphism = h ∘ morphism → g = h

def epimorphismWitnessClosed (E : EpimorphismObject) : Prop :=
  ∀ (g h : E.target → E.target), g ∘ E.morphism = h ∘ E.morphism → g = h

theorem epimorphism_witness_closed_from_epiProperty (E : EpimorphismObject) :
    epimorphismWitnessClosed E :=
  E.epiProperty

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse