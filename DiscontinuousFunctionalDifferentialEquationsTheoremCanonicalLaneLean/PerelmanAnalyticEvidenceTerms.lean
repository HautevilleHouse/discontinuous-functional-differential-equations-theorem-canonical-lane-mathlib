import DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms {G : DiscontinuousCurvaturePackage}
    (C : CurvatureAnalyticCertificate G) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : DiscontinuousCurvatureClosed G

def CurvatureAnalyticCertificate.evidenceTerms {G : DiscontinuousCurvaturePackage}
    (C : CurvatureAnalyticCertificate G) : CurvatureAnalyticEvidenceTerms C :=
  {
    riemannTensorSymmetries := C.riemannTensorSymmetriesClosed
    bianchiIdentities := C.bianchiIdentitiesClosed
    ricciContractionLaw := C.ricciContractionLawClosed
    scalarTraceLaw := C.scalarTraceLawClosed
    curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed
    curvatureClosed := discontinuous_curvature_closed_from_evidence G C.curvatureEvidence
  }

structure HamiltonDeTurckEvidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} (H : HamiltonDeTurckCertificate F) where
  gaugeChoice : H.gaugeChoice
  stronglyParabolicReduction : H.stronglyParabolicReduction
  deTurckVectorField : H.deTurckVectorField
  pullbackRecoversDiscontinuousPDE : H.pullbackRecoversDiscontinuousPDE
  uniquenessCompatibility : H.uniquenessCompatibility
  flowClosed : DiscontinuousPDEClosed F

def HamiltonDeTurckCertificate.evidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} (H : HamiltonDeTurckCertificate F) :
    HamiltonDeTurckEvidenceTerms H :=
  {
    gaugeChoice := H.gaugeChoiceClosed
    stronglyParabolicReduction := H.stronglyParabolicReductionClosed
    deTurckVectorField := H.deTurckVectorFieldClosed
    pullbackRecoversDiscontinuousPDE := H.pullbackRecoversDiscontinuousPDEClosed
    uniquenessCompatibility := H.uniquenessCompatibilityClosed
    flowClosed := discontinuous_pde_closed_from_evidence F H.flowEvidence
  }

structure ShortTimeEvidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    (C : ShortTimeAnalyticCertificate S) where
  parabolicRegularity : C.parabolicRegularity
  localExistenceInterval : C.localExistenceInterval
  uniquenessOnOverlap : C.uniquenessOnOverlap
  continuationCriterion : C.continuationCriterion
  shortTimeClosed : ShortTimeExistenceClosed S

def ShortTimeAnalyticCertificate.evidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    (C : ShortTimeAnalyticCertificate S) : ShortTimeEvidenceTerms C :=
  {
    parabolicRegularity := C.parabolicRegularityClosed
    localExistenceInterval := C.localExistenceIntervalClosed
    uniquenessOnOverlap := C.uniquenessOnOverlapClosed
    continuationCriterion := C.continuationCriterionClosed
    shortTimeClosed := short_time_existence_closed_from_evidence S C.shortTimeEvidence
  }

structure EntropyEvidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : EntropyJumpConditionPackage S} (C : EntropyAnalyticCertificate E) where
  conjugateHeatEquation : C.conjugateHeatEquation
  wFunctionalDefined : C.wFunctionalDefined
  muFunctionalDefined : C.muFunctionalDefined
  entropyMonotonicityFormula : C.entropyMonotonicityFormula
  reducedVolumeMonotonicity : C.reducedVolumeMonotonicity
  entropyClosed : EntropyJumpConditionClosed E

def EntropyAnalyticCertificate.evidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : EntropyJumpConditionPackage S} (C : EntropyAnalyticCertificate E) :
    EntropyEvidenceTerms C :=
  {
    conjugateHeatEquation := C.conjugateHeatEquationClosed
    wFunctionalDefined := C.wFunctionalDefinedClosed
    muFunctionalDefined := C.muFunctionalDefinedClosed
    entropyMonotonicityFormula := C.entropyMonotonicityFormulaClosed
    reducedVolumeMonotonicity := C.reducedVolumeMonotonicityClosed
    entropyClosed := entropy_jump_condition_closed_from_evidence E C.entropyEvidence
  }

structure NoncollapsingEvidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : EntropyJumpConditionPackage S} {N : NoncollapsingPackage E}
    (C : NoncollapsingAnalyticCertificate N) where
  noLocalCollapsing : C.noLocalCollapsing
  scaleInvariantVolumeLowerBound : C.scaleInvariantVolumeLowerBound
  curvatureScaleCompatibility : C.curvatureScaleCompatibility
  ancientSolutionCompactnessInput : C.ancientSolutionCompactnessInput
  noncollapsingClosed : NoncollapsingClosed N

def NoncollapsingAnalyticCertificate.evidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : EntropyJumpConditionPackage S} {N : NoncollapsingPackage E}
    (C : NoncollapsingAnalyticCertificate N) : NoncollapsingEvidenceTerms C :=
  {
    noLocalCollapsing := C.noLocalCollapsingClosed
    scaleInvariantVolumeLowerBound := C.scaleInvariantVolumeLowerBoundClosed
    curvatureScaleCompatibility := C.curvatureScaleCompatibilityClosed
    ancientSolutionCompactnessInput := C.ancientSolutionCompactnessInputClosed
    noncollapsingClosed := noncollapsing_closed_from_evidence N C.noncollapsingEvidence
  }

structure SingularityEvidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : EntropyJumpConditionPackage S} {N : NoncollapsingPackage E}
    {Q : SingularityModelsPackage N} (C : SingularityAnalyticCertificate Q) where
  blowupSequenceChosen : C.blowupSequenceChosen
  pointedLimitExists : C.pointedLimitExists
  ancientKappaSolution : C.ancientKappaSolution
  asymptoticShrinkersControlled : C.asymptoticShrinkersControlled
  singularityModelsClosed : SingularityModelsClosed Q

def SingularityAnalyticCertificate.evidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : EntropyJumpConditionPackage S} {N : NoncollapsingPackage E}
    {Q : SingularityModelsPackage N} (C : SingularityAnalyticCertificate Q) :
    SingularityEvidenceTerms C :=
  {
    blowupSequenceChosen := C.blowupSequenceChosenClosed
    pointedLimitExists := C.pointedLimitExistsClosed
    ancientKappaSolution := C.ancientKappaSolutionClosed
    asymptoticShrinkersControlled := C.asymptoticShrinkersControlledClosed
    singularityModelsClosed := singularity_models_closed_from_evidence Q C.singularityEvidence
  }

structure CanonicalNeighborhoodEvidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : EntropyJumpConditionPackage S} {N : NoncollapsingPackage E}
    {Q : SingularityModelsPackage N} {C : CanonicalNeighborhoodsPackage Q}
    (P : CanonicalNeighborhoodAnalyticCertificate C) where
  highCurvaturePointClassified : P.highCurvaturePointClassified
  neckCapOrRoundComponent : P.neckCapOrRoundComponent
  surgeryScaleAdmissible : P.surgeryScaleAdmissible
  persistenceUnderFlow : P.persistenceUnderFlow
  canonicalNeighborhoodClosed : CanonicalNeighborhoodsClosed C

def CanonicalNeighborhoodAnalyticCertificate.evidenceTerms {G : DiscontinuousCurvaturePackage}
    {F : DiscontinuousPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : EntropyJumpConditionPackage S} {N : NoncollapsingPackage E}
    {Q : SingularityModelsPackage N} {C : CanonicalNeighborhoodsPackage Q}
    (P : CanonicalNeighborhoodAnalyticCertificate C) : CanonicalNeighborhoodEvidenceTerms P :=
  {
    highCurvaturePointClassified := P.highCurvaturePointClassifiedClosed
    neckCapOrRoundComponent := P.neckCapOrRoundComponentClosed
    surgeryScaleAdmissible := P.surgeryScaleAdmissibleClosed
    persistenceUnderFlow := P.persistenceUnderFlowClosed
    canonicalNeighborhoodClosed := canonical_neighborhoods_closed_from_evidence C P.canonicalNeighborhoodEvidence
  }

end DiscontinuousFunctionalDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse