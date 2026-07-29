import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure FunctionalDifferentialEquationStructure where
  stateSpace : Type
  timeDomain : Type
  functionalArgument : Type
  delayDependence : Prop
  discontinuousCoefficients : Prop
  wellPosedness : Prop
  existenceResult : Prop

structure FDEExistenceEvidence (F : FunctionalDifferentialEquationStructure) where
  wellPosednessClosed : F.wellPosedness
  existenceResultClosed : F.existenceResult

def FDEExistenceClosed (F : FunctionalDifferentialEquationStructure) : Prop :=
  F.wellPosedness ∧ F.existenceResult

theorem fde_existence_closed_from_evidence (F : FunctionalDifferentialEquationStructure)
    (E : FDEExistenceEvidence F) : FDEExistenceClosed F :=
  And.intro E.wellPosednessClosed E.existenceResultClosed

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse