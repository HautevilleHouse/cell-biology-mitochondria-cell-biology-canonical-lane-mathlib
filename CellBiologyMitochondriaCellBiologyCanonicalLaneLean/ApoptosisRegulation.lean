import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitochondriaCellBiologyCanonicalLaneLean

structure ApoptosisRegulationPackage where
  cytochromeCRelease : Prop
  caspaseActivation : Prop
  bcl2FamilyRegulation : Prop
  mitochondrialOuterMembranePermeabilization : Prop

structure ApoptosisRegulationEvidence (A : ApoptosisRegulationPackage) where
  cytochromeCReleaseClosed : A.cytochromeCRelease
  caspaseActivationClosed : A.caspaseActivation
  bcl2FamilyRegulationClosed : A.bcl2FamilyRegulation
  mitochondrialOuterMembranePermeabilizationClosed : A.mitochondrialOuterMembranePermeabilization

def ApoptosisRegulationClosed (A : ApoptosisRegulationPackage) : Prop :=
  A.cytochromeCRelease ∧ A.caspaseActivation ∧
  A.bcl2FamilyRegulation ∧ A.mitochondrialOuterMembranePermeabilization

theorem apoptosis_regulation_closed_from_evidence
    (A : ApoptosisRegulationPackage) (E : ApoptosisRegulationEvidence A) :
    ApoptosisRegulationClosed A := by
  exact And.intro E.cytochromeCReleaseClosed
    (And.intro E.caspaseActivationClosed
      (And.intro E.bcl2FamilyRegulationClosed E.mitochondrialOuterMembranePermeabilizationClosed))

end HautevilleHouse
end CellBiologyMitochondriaCellBiologyCanonicalLaneLean