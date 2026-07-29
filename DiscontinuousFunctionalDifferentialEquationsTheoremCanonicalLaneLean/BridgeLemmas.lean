import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DFDEWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
