import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure DiscontinuityMeasurePackage where
  jumpSet : Type u
  jumpCondition : Prop
  totalVariationControl : Prop
  jumpConditionTerm : jumpCondition
  totalVariationControlTerm : totalVariationControl

structure DiscontinuityMeasureEvidence (D : DiscontinuityMeasurePackage) where
  jumpConditionClosed : D.jumpCondition
  totalVariationControlClosed : D.totalVariationControl

def DiscontinuityMeasureClosed (D : DiscontinuityMeasurePackage) : Prop :=
  D.jumpCondition ∧ D.totalVariationControl

theorem discontinuity_measure_closed_from_evidence (D : DiscontinuityMeasurePackage)
    (E : DiscontinuityMeasureEvidence D) : DiscontinuityMeasureClosed D := by
  exact And.intro E.jumpConditionClosed E.totalVariationControlClosed

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse