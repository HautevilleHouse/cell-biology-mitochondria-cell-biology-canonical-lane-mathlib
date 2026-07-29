import canonicalLaneMathlib.AdmissibleClass
import CellBiologyMitochondriaCellBiologyCanonicalLaneLean.BridgeLemmas
import CellBiologyMitochondriaCellBiologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyMitochondriaCellBiologyCanonicalLaneLean

def ConstrainedMitochondrialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mitochondrial_endgame (A : AdmissibleClass) :
    ConstrainedMitochondrialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyMitochondriaCellBiologyCanonicalLaneLean
end HautevilleHouse
