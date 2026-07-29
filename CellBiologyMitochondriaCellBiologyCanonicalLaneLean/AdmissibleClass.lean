import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyMitochondriaCellBiologyCanonicalLaneLean

structure AdmissibleClass where
  object : MitochondriaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MitochondriaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyMitochondriaCellBiologyCanonicalLaneLean
end HautevilleHouse
