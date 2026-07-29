import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure FunctionalDifferentialEquationPackage (A : AdmissibleClass) where
  timeDomain : Type u
  stateSpace : Type v
  functional : Type w
  equationDefinition : Prop
  initialCondition : Prop
  solutionConcept : Prop

structure FunctionalDifferentialEquationEvidence (A : AdmissibleClass) (F : FunctionalDifferentialEquationPackage A) where
  equationDefinitionClosed : F.equationDefinition
  initialConditionClosed : F.initialCondition
  solutionConceptClosed : F.solutionConcept

def FunctionalDifferentialEquationClosed (A : AdmissibleClass) (F : FunctionalDifferentialEquationPackage A) : Prop :=
  F.equationDefinition ∧ F.initialCondition ∧ F.solutionConcept

theorem functional_differential_equation_closed_from_evidence (A : AdmissibleClass) (F : FunctionalDifferentialEquationPackage A) (E : FunctionalDifferentialEquationEvidence A F) : FunctionalDifferentialEquationClosed A F := by
  exact And.intro E.equationDefinitionClosed (And.intro E.initialConditionClosed E.solutionConceptClosed)

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
