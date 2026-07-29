import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean.BridgeLemmas

/-!
# Functional Differential Equation Package
-/

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure FDEPackage where
  stateSpace : Type u
  timeDomain : Type v
  delayFunction : stateSpace → timeDomain → stateSpace
  discontinuousTerm : stateSpace → timeDomain → stateSpace
  solution : stateSpace → timeDomain → stateSpace
  existenceCondition : Prop
  uniquenessCondition : Prop

structure FDEEvidence (F : FDEPackage) where
  existenceConditionClosed : F.existenceCondition
  uniquenessConditionClosed : F.uniquenessCondition

def FDEClosed (F : FDEPackage) : Prop :=
  F.existenceCondition ∧ F.uniquenessCondition

theorem fde_closed_from_evidence (F : FDEPackage) (E : FDEEvidence F) :
    FDEClosed F := by
  exact And.intro E.existenceConditionClosed E.uniquenessConditionClosed

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse