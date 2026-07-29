import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure FilippovSolutionsPackage where
  differentialInclusionFormulation : Prop
  convexificationProcedure : Prop
  solutionExistenceGuaranteed : Prop
  differentialInclusionFormulationTerm : differentialInclusionFormulation
  convexificationProcedureTerm : convexificationProcedure
  solutionExistenceGuaranteedTerm : solutionExistenceGuaranteed

structure FilippovSolutionsEvidence (F : FilippovSolutionsPackage) where
  differentialInclusionFormulationClosed : F.differentialInclusionFormulation
  convexificationProcedureClosed : F.convexificationProcedure
  solutionExistenceGuaranteedClosed : F.solutionExistenceGuaranteed

def FilippovSolutionsClosed (F : FilippovSolutionsPackage) : Prop :=
  F.differentialInclusionFormulation ∧ F.convexificationProcedure ∧ F.solutionExistenceGuaranteed

theorem filippov_solutions_closed_from_evidence (F : FilippovSolutionsPackage)
    (E : FilippovSolutionsEvidence F) : FilippovSolutionsClosed F := by
  exact And.intro E.differentialInclusionFormulationClosed
    (And.intro E.convexificationProcedureClosed E.solutionExistenceGuaranteedClosed)

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse