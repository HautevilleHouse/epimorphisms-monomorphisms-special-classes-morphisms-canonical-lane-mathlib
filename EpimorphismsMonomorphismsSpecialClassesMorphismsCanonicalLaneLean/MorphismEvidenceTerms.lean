import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean.MorphismDomainObjects
import HautevilleHouse.EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean.MonomorphismSpecialClasses

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure EpimorphismEvidence (E : EpimorphismObject) where
  epiPropertyClosed : epimorphismWitnessClosed E

def EpimorphismClosed (E : EpimorphismObject) : Prop :=
  epimorphismWitnessClosed E

theorem epimorphism_closed_from_evidence (E : EpimorphismObject) (Ev : EpimorphismEvidence E) :
    EpimorphismClosed E :=
  Ev.epiPropertyClosed

structure MonomorphismEvidence (M : MonomorphismObject) where
  monoPropertyClosed : monomorphismWitnessClosed M

def MonomorphismClosed (M : MonomorphismObject) : Prop :=
  monomorphismWitnessClosed M

theorem monomorphism_closed_from_evidence (M : MonomorphismObject) (Ev : MonomorphismEvidence M) :
    MonomorphismClosed M :=
  Ev.monoPropertyClosed

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse