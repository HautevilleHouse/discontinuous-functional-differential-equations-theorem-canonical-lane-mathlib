import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure StabilityPackage where
  lyapunovFunctional : Type
  stabilityCondition : Prop
  asymptoticStability : Prop
  perturbationBounds : Prop

structure StabilityEvidence (S : StabilityPackage) where
  stabilityConditionClosed : S.stabilityCondition
  asymptoticStabilityClosed : S.asymptoticStability
  perturbationBoundsClosed : S.perturbationBounds

def StabilityClosed (S : StabilityPackage) : Prop :=
  S.stabilityCondition ∧ S.asymptoticStability ∧ S.perturbationBounds

theorem stability_closed_from_evidence (S : StabilityPackage)
    (E : StabilityEvidence S) : StabilityClosed S :=
  And.intro E.stabilityConditionClosed
    (And.intro E.asymptoticStabilityClosed E.perturbationBoundsClosed)

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse