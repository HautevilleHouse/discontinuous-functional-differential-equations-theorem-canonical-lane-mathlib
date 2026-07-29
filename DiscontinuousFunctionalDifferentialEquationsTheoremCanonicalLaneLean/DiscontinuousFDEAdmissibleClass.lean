import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuousFDEAdmittedObject where
  domain : Type
  codomain : Type
  discontinuitySet : Type
  hasMeasurableDiscontinuity : Prop
  jumpCondition : Prop
  carriedRemainder : Prop
  endpointSatisfied : Prop
  gateWitness : endpointSatisfied ∨ carriedRemainder

structure AdmissibleClass where
  object : DiscontinuousFDEAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DFDEClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse