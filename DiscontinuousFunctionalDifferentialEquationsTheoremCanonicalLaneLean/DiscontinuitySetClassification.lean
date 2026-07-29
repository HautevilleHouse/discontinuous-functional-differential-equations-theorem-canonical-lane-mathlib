import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuitySetPackage (A : AdmissibleClass) where
  discontinuitySet : Type u
  classification : Prop
  measureZero : Prop
  jumpStructure : Prop
  residualBehaviour : Prop

structure DiscontinuitySetEvidence (A : AdmissibleClass) (D : DiscontinuitySetPackage A) where
  classificationClosed : D.classification
  measureZeroClosed : D.measureZero
  jumpStructureClosed : D.jumpStructure
  residualBehaviourClosed : D.residualBehaviour

def DiscontinuitySetClosed (A : AdmissibleClass) (D : DiscontinuitySetPackage A) : Prop :=
  D.classification ∧ D.measureZero ∧ D.jumpStructure ∧ D.residualBehaviour

theorem discontinuity_set_closed_from_evidence (A : AdmissibleClass) (D : DiscontinuitySetPackage A) (E : DiscontinuitySetEvidence A D) : DiscontinuitySetClosed A D := by
  exact And.intro E.classificationClosed (And.intro E.measureZeroClosed (And.intro E.jumpStructureClosed E.residualBehaviourClosed))

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
