import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean.DiscontinuousFDESolutions

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuousFDEEndpointPackage where
  intervalExistence : Prop
  solutionContinuation : Prop
  terminalCondition : Prop
  endpointReached : Prop

structure DiscontinuousFDEEndpointEvidence (E : DiscontinuousFDEEndpointPackage) where
  intervalExistenceClosed : E.intervalExistence
  solutionContinuationClosed : E.solutionContinuation
  terminalConditionClosed : E.terminalCondition
  endpointReachedClosed : E.endpointReached

def DiscontinuousFDEEndpointClosed (E : DiscontinuousFDEEndpointPackage) : Prop :=
  E.intervalExistence ∧ E.solutionContinuation ∧ E.terminalCondition ∧ E.endpointReached

theorem discontinuous_fde_endpoint_closed_from_evidence
    (E : DiscontinuousFDEEndpointPackage) (Ev : DiscontinuousFDEEndpointEvidence E) :
    DiscontinuousFDEEndpointClosed E := by
  exact And.intro Ev.intervalExistenceClosed
    (And.intro Ev.solutionContinuationClosed
      (And.intro Ev.terminalConditionClosed Ev.endpointReachedClosed))

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
