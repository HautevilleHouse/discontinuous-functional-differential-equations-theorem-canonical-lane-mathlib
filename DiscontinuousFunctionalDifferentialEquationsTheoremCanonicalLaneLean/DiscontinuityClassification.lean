import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean.FunctionalDifferentialEquation_Package

/-!
# Discontinuity Classification Package
-/

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuityClassificationPackage {F : FDEPackage} where
  jumpSetMeasurable : Prop
  jumpMagnitudeBounded : Prop
  classificationOfDiscontinuities : Prop
  finiteNumberOfJumpsOnCompact : Prop

structure DiscontinuityClassificationEvidence {F : FDEPackage}
    (C : DiscontinuityClassificationPackage F) where
  jumpSetMeasurableClosed : C.jumpSetMeasurable
  jumpMagnitudeBoundedClosed : C.jumpMagnitudeBounded
  classificationOfDiscontinuitiesClosed : C.classificationOfDiscontinuities
  finiteNumberOfJumpsOnCompactClosed : C.finiteNumberOfJumpsOnCompact

def DiscontinuityClassificationClosed {F : FDEPackage}
    (C : DiscontinuityClassificationPackage F) : Prop :=
  C.jumpSetMeasurable ∧ C.jumpMagnitudeBounded ∧
  C.classificationOfDiscontinuities ∧ C.finiteNumberOfJumpsOnCompact

theorem discontinuity_classification_closed_from_evidence {F : FDEPackage}
    (C : DiscontinuityClassificationPackage F)
    (E : DiscontinuityClassificationEvidence C) :
    DiscontinuityClassificationClosed C := by
  exact And.intro E.jumpSetMeasurableClosed
    (And.intro E.jumpMagnitudeBoundedClosed
      (And.intro E.classificationOfDiscontinuitiesClosed E.finiteNumberOfJumpsOnCompactClosed))

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse