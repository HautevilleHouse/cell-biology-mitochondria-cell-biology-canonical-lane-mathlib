import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitochondriaCellBiologyCanonicalLaneLean

structure MitochondrialMembranePotentialPackage where
  innerMembranePotential : Prop
  protonGradient : Prop
  electronTransportChain : Prop
  atpSynthaseCoupling : Prop
  uncouplingProteins : Prop

structure MitochondrialMembranePotentialEvidence (M : MitochondrialMembranePotentialPackage) where
  innerMembranePotentialClosed : M.innerMembranePotential
  protonGradientClosed : M.protonGradient
  electronTransportChainClosed : M.electronTransportChain
  atpSynthaseCouplingClosed : M.atpSynthaseCoupling
  uncouplingProteinsClosed : M.uncouplingProteins

def MitochondrialMembranePotentialClosed (M : MitochondrialMembranePotentialPackage) : Prop :=
  M.innerMembranePotential ∧ M.protonGradient ∧ M.electronTransportChain ∧ M.atpSynthaseCoupling ∧ M.uncouplingProteins

theorem mitochondrial_membrane_potential_closed_from_evidence
    (M : MitochondrialMembranePotentialPackage) (E : MitochondrialMembranePotentialEvidence M) :
    MitochondrialMembranePotentialClosed M := by
  exact And.intro E.innerMembranePotentialClosed
    (And.intro E.protonGradientClosed
      (And.intro E.electronTransportChainClosed
        (And.intro E.atpSynthaseCouplingClosed E.uncouplingProteinsClosed)))

end CellBiologyMitochondriaCellBiologyCanonicalLaneLean
end HautevilleHouse
