import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitochondriaCellBiologyCanonicalLaneLean

structure OXPHOSMetabolismPackage where
  electronTransportChain : Prop
  protonMotifForce : Prop
  atpSynthaseActivity : Prop
  reactiveOxygenSpecies : Prop
  uncouplingProteins : Prop

structure OXPHOSMetabolismEvidence (O : OXPHOSMetabolismPackage) where
  electronTransportChainClosed : O.electronTransportChain
  protonMotifForceClosed : O.protonMotifForce
  atpSynthaseActivityClosed : O.atpSynthaseActivity
  reactiveOxygenSpeciesClosed : O.reactiveOxygenSpecies
  uncouplingProteinsClosed : O.uncouplingProteins

def OXPHOSMetabolismClosed (O : OXPHOSMetabolismPackage) : Prop :=
  O.electronTransportChain ∧ O.protonMotifForce ∧ O.atpSynthaseActivity ∧
  O.reactiveOxygenSpecies ∧ O.uncouplingProteins

theorem oxphos_metabolism_closed_from_evidence (O : OXPHOSMetabolismPackage)
    (E : OXPHOSMetabolismEvidence O) : OXPHOSMetabolismClosed O := by
  exact And.intro E.electronTransportChainClosed
    (And.intro E.protonMotifForceClosed
      (And.intro E.atpSynthaseActivityClosed
        (And.intro E.reactiveOxygenSpeciesClosed E.uncouplingProteinsClosed)))

end CellBiologyMitochondriaCellBiologyCanonicalLaneLean
end HautevilleHouse
