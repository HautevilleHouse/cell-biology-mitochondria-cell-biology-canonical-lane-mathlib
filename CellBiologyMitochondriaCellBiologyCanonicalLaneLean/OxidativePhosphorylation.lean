import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitochondriaCellBiologyCanonicalLaneLean

structure OxidativePhosphorylationPackage where
  nadhDehydrogenaseActivity : Prop
  succinateDehydrogenaseActivity : Prop
  cytochromeCComplex : Prop
  atpSynthaseRotation : Prop
  protonMotiveForce : Prop

structure OxidativePhosphorylationEvidence (O : OxidativePhosphorylationPackage) where
  nadhDehydrogenaseActivityClosed : O.nadhDehydrogenaseActivity
  succinateDehydrogenaseActivityClosed : O.succinateDehydrogenaseActivity
  cytochromeCComplexClosed : O.cytochromeCComplex
  atpSynthaseRotationClosed : O.atpSynthaseRotation
  protonMotiveForceClosed : O.protonMotiveForce

def OxidativePhosphorylationClosed (O : OxidativePhosphorylationPackage) : Prop :=
  O.nadhDehydrogenaseActivity ∧ O.succinateDehydrogenaseActivity ∧ O.cytochromeCComplex ∧ O.atpSynthaseRotation ∧ O.protonMotiveForce

theorem oxidative_phosphorylation_closed_from_evidence
    (O : OxidativePhosphorylationPackage) (E : OxidativePhosphorylationEvidence O) :
    OxidativePhosphorylationClosed O := by
  exact And.intro E.nadhDehydrogenaseActivityClosed
    (And.intro E.succinateDehydrogenaseActivityClosed
      (And.intro E.cytochromeCComplexClosed
        (And.intro E.atpSynthaseRotationClosed E.protonMotiveForceClosed)))

end CellBiologyMitochondriaCellBiologyCanonicalLaneLean
end HautevilleHouse
