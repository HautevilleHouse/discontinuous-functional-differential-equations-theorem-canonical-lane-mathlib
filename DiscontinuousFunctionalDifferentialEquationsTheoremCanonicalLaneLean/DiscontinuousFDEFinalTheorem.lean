import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean.DiscontinuousFDESolutions

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

def bridgeClosed (A : DiscontinuousFDEAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : DiscontinuousFDEAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : DiscontinuousFDEAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DiscontinuousFDEAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedDiscontinuousFDEClosure (A : DiscontinuousFDEAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discontinuous_fde_endgame (A : DiscontinuousFDEAdmissibleClass) :
    ConstrainedDiscontinuousFDEClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
