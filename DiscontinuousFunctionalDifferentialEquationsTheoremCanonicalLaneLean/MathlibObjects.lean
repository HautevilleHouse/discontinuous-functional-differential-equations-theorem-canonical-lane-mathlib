import DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean.AdmissibleClass
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiscontinuousDifferentialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiscontinuousDifferentialAdmittedObject where
  space : DiscontinuousDifferentialSpace
  piecewiseContinuousVectorField : Prop
  finiteJumpSet : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  uniqueSolutionExists : Prop
  conclusion : uniqueSolutionExists

structure DiscontinuousDifferentialEndgameState where
  object : DiscontinuousDifferentialAdmittedObject

def DiscontinuousDifferentialWitnessClosed (O : DiscontinuousDifferentialAdmittedObject) : Prop :=
  O.uniqueSolutionExists

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse