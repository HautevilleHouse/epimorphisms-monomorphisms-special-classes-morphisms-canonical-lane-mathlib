import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean.MorphismDomainObjects
import HautevilleHouse.EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean.MonomorphismSpecialClasses

namespace HautevilleHouse
namespace EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean

structure EpimorphismCertificate (E : EpimorphismObject) where
  epiPropertyClosed : epimorphismWitnessClosed E

def EpimorphismCertificateClosed (C : EpimorphismCertificate E) : Prop :=
  C.epiPropertyClosed

theorem epimorphism_certificate_closed (C : EpimorphismCertificate E) :
    EpimorphismCertificateClosed C :=
  C.epiPropertyClosed

structure MonomorphismCertificate (M : MonomorphismObject) where
  monoPropertyClosed : monomorphismWitnessClosed M

def MonomorphismCertificateClosed (C : MonomorphismCertificate M) : Prop :=
  C.monoPropertyClosed

theorem monomorphism_certificate_closed (C : MonomorphismCertificate M) :
    MonomorphismCertificateClosed C :=
  C.monoPropertyClosed

end EpimorphismsMonomorphismsSpecialClassesMorphismsCanonicalLaneLean
end HautevilleHouse