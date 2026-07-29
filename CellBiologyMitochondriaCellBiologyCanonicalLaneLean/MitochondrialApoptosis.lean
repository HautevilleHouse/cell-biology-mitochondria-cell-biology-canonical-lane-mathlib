import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitochondriaCellBiologyCanonicalLaneLean

structure MitochondrialApoptosisPackage where
  cytochromeCRelease : Prop
  apoptosomeFormation : Prop
  caspaseActivation : Prop
  bcl2FamilyRegulation : Prop
  mitochondrialOuterMembranePermeabilization : Prop

structure MitochondrialApoptosisEvidence (A : MitochondrialApoptosisPackage) where
  cytochromeCReleaseClosed : A.cytochromeCRelease
  apoptosomeFormationClosed : A.apoptosomeFormation
  caspaseActivationClosed : A.caspaseActivation
  bcl2FamilyRegulationClosed : A.bcl2FamilyRegulation
  mitochondrialOuterMembranePermeabilizationClosed : A.mitochondrialOuterMembranePermeabilization

def MitochondrialApoptosisClosed (A : MitochondrialApoptosisPackage) : Prop :=
  A.cytochromeCRelease ∧ A.apoptosomeFormation ∧ A.caspaseActivation ∧ A.bcl2FamilyRegulation ∧ A.mitochondrialOuterMembranePermeabilization

theorem mitochondrial_apoptosis_closed_from_evidence
    (A : MitochondrialApoptosisPackage) (E : MitochondrialApoptosisEvidence A) :
    MitochondrialApoptosisClosed A := by
  exact And.intro E.cytochromeCReleaseClosed
    (And.intro E.apoptosomeFormationClosed
      (And.intro E.caspaseActivationClosed
        (And.intro E.bcl2FamilyRegulationClosed E.mitochondrialOuterMembranePermeabilizationClosed)))

end CellBiologyMitochondriaCellBiologyCanonicalLaneLean
end HautevilleHouse
