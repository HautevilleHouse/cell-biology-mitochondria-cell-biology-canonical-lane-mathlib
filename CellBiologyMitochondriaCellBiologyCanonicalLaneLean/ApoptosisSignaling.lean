import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitochondriaCellBiologyCanonicalLaneLean

structure CytochromeCRelease where
  membranePermeabilization : Prop
  cytochromeC : Prop
  caspasesActivation : Prop
  apoptosomeFormation : Prop

structure ApoptosisSignalingPackage where
  release : CytochromeCRelease
  bcl2FamilyRegulation : Prop
  mitochondrialOuterMembranePermeabilization : Prop
  cellDeathExecution : Prop

structure ApoptosisSignalingEvidence (A : ApoptosisSignalingPackage) where
  membranePermeabilizationClosed : A.release.membranePermeabilization
  cytochromeCClosed : A.release.cytochromeC
  caspasesActivationClosed : A.release.caspasesActivation
  apoptosomeFormationClosed : A.release.apoptosomeFormation
  bcl2FamilyRegulationClosed : A.bcl2FamilyRegulation
  mitochondrialOuterMembranePermeabilizationClosed : A.mitochondrialOuterMembranePermeabilization
  cellDeathExecutionClosed : A.cellDeathExecution

def ApoptosisSignalingClosed (A : ApoptosisSignalingPackage) : Prop :=
  A.release.membranePermeabilization ∧ A.release.cytochromeC ∧
  A.release.caspasesActivation ∧ A.release.apoptosomeFormation ∧
  A.bcl2FamilyRegulation ∧ A.mitochondrialOuterMembranePermeabilization ∧
  A.cellDeathExecution

theorem apoptosis_signaling_closed_from_evidence (A : ApoptosisSignalingPackage)
    (E : ApoptosisSignalingEvidence A) : ApoptosisSignalingClosed A := by
  exact And.intro E.membranePermeabilizationClosed
    (And.intro E.cytochromeCClosed
      (And.intro E.caspasesActivationClosed
        (And.intro E.apoptosomeFormationClosed
          (And.intro E.bcl2FamilyRegulationClosed
            (And.intro E.mitochondrialOuterMembranePermeabilizationClosed
              E.cellDeathExecutionClosed)))))

end CellBiologyMitochondriaCellBiologyCanonicalLaneLean
end HautevilleHouse
