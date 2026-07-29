import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuousFDEAdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmittedObject where
  initialCondition : Prop
  rightHandSide : Prop
  solutionSpace : Type u
  solutionSpaceTopology : TopologicalSpace (solutionSpace)
  existenceInterval : Set ℝ
  uniquenessProperty : Prop
  discontinuousJumpCondition : Prop
  solutionExists : Prop
  conclusion : solutionExists

def admittedClosure (A : DiscontinuousFDEAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
