import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure StabilityConditionsPackage where
  lyapunovKrasovskiiFunctional : Prop
  exponentialStabilityBound : Prop
  delayDependentCondition : Prop
  lyapunovKrasovskiiFunctionalTerm : lyapunovKrasovskiiFunctional
  exponentialStabilityBoundTerm : exponentialStabilityBound
  delayDependentConditionTerm : delayDependentCondition

structure StabilityConditionsEvidence (S : StabilityConditionsPackage) where
  lyapunovKrasovskiiFunctionalClosed : S.lyapunovKrasovskiiFunctional
  exponentialStabilityBoundClosed : S.exponentialStabilityBound
  delayDependentConditionClosed : S.delayDependentCondition

def StabilityConditionsClosed (S : StabilityConditionsPackage) : Prop :=
  S.lyapunovKrasovskiiFunctional ∧ S.exponentialStabilityBound ∧ S.delayDependentCondition

theorem stability_conditions_closed_from_evidence (S : StabilityConditionsPackage)
    (E : StabilityConditionsEvidence S) : StabilityConditionsClosed S := by
  exact And.intro E.lyapunovKrasovskiiFunctionalClosed
    (And.intro E.exponentialStabilityBoundClosed E.delayDependentConditionClosed)

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse