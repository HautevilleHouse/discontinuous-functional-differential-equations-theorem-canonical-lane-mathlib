import DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean.EntropyJumpCondition

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure NoncollapsingPackage {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    (Epkg : EntropyJumpConditionPackage S) where
  scaleInvariantVolumeBound : Prop
  curvatureScaleControl : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : EntropyJumpConditionPackage S} (N : NoncollapsingPackage Epkg) where
  scaleInvariantVolumeBoundClosed : N.scaleInvariantVolumeBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : EntropyJumpConditionPackage S} (N : NoncollapsingPackage Epkg) : Prop :=
  N.scaleInvariantVolumeBound ∧ N.curvatureScaleControl ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence
    {G : DiscontinuousCurvaturePackage} {F : DiscontinuousPDEPackage G}
    {S : ShortTimeExistencePackage F} {Epkg : EntropyJumpConditionPackage S}
    (N : NoncollapsingPackage Epkg) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantVolumeBoundClosed
    (And.intro E.curvatureScaleControlClosed E.blowupLimitNoncollapsedClosed)

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse