import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure ExistenceTheoryPackage where
  stepMethodConvergence : Prop
  fixedPointTheoremApplied : Prop
  solutionContinuation : Prop
  stepMethodConvergenceTerm : stepMethodConvergence
  fixedPointTheoremAppliedTerm : fixedPointTheoremApplied
  solutionContinuationTerm : solutionContinuation

structure ExistenceTheoryEvidence (E : ExistenceTheoryPackage) where
  stepMethodConvergenceClosed : E.stepMethodConvergence
  fixedPointTheoremAppliedClosed : E.fixedPointTheoremApplied
  solutionContinuationClosed : E.solutionContinuation

def ExistenceTheoryClosed (E : ExistenceTheoryPackage) : Prop :=
  E.stepMethodConvergence ∧ E.fixedPointTheoremApplied ∧ E.solutionContinuation

theorem existence_theory_closed_from_evidence (E : ExistenceTheoryPackage)
    (Ev : ExistenceTheoryEvidence E) : ExistenceTheoryClosed E := by
  exact And.intro Ev.stepMethodConvergenceClosed
    (And.intro Ev.fixedPointTheoremAppliedClosed Ev.solutionContinuationClosed)

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse