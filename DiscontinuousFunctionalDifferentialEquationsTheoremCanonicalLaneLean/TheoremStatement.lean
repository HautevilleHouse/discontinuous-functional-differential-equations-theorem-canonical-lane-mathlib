import DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure DFDEAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  functionalDifferentialEquation : Prop
  solutionExists : Prop
  uniqueness : Prop
  regularity : Prop
  conclusion : solutionExists ∧ uniqueness ∧ regularity

def DFDEWitnessClosed (O : DFDEAdmittedObject) : Prop :=
  O.solutionExists ∧ O.uniqueness ∧ O.regularity

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse