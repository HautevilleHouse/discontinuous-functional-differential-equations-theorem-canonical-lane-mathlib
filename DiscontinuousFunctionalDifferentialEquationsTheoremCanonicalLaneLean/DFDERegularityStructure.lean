import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure JumpConditionPackage where
  discontinuityType : String
  leftLimitExists : Prop
  rightLimitExists : Prop
  jumpSizeControlled : Prop
  regularPartExists : Prop

structure DFDERegularityPackage where
  solutionSpace : Type
  discontinuitySet : Type
  jumpCondition : JumpConditionPackage
  piecewiseSmooth : Prop
  boundedVariation : Prop

structure DFDERegularityEvidence (D : DFDERegularityPackage) where
  piecewiseSmoothClosed : D.piecewiseSmooth
  boundedVariationClosed : D.boundedVariation

def DFDERegularityClosed (D : DFDERegularityPackage) : Prop :=
  D.piecewiseSmooth ∧ D.boundedVariation

theorem dfde_regularity_closed_from_evidence (D : DFDERegularityPackage)
    (E : DFDERegularityEvidence D) : DFDERegularityClosed D :=
  And.intro E.piecewiseSmoothClosed E.boundedVariationClosed

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse