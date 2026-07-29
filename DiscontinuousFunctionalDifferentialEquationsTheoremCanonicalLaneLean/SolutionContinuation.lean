import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure SolutionContinuationPackage where
  maximalInterval : Type
  blowupCondition : Prop
  continuationBeyondDiscontinuity : Prop
  uniqueContinuation : Prop
  continuousDependence : Prop

structure SolutionContinuationEvidence (S : SolutionContinuationPackage) where
  continuationBeyondDiscontinuityClosed : S.continuationBeyondDiscontinuity
  uniqueContinuationClosed : S.uniqueContinuation
  continuousDependenceClosed : S.continuousDependence

def SolutionContinuationClosed (S : SolutionContinuationPackage) : Prop :=
  S.continuationBeyondDiscontinuity ∧ S.uniqueContinuation ∧ S.continuousDependence

theorem solution_continuation_closed_from_evidence (S : SolutionContinuationPackage)
    (E : SolutionContinuationEvidence S) : SolutionContinuationClosed S :=
  And.intro E.continuationBeyondDiscontinuityClosed
    (And.intro E.uniqueContinuationClosed E.continuousDependenceClosed)

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse