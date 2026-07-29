import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace CellBiologyMitochondriaCellBiologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MitochondriaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyMitochondriaCellBiologyCanonicalLaneLean
end HautevilleHouse
