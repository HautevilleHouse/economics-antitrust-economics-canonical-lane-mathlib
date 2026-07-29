import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure CollusionEvidencePackage where
  parallelConduct : Prop
  facilitatingPractices : Prop
  exchangeOfInformation : Prop
  marketStructureFacilitating : Prop
  plusFactors : Prop

structure CollusionEvidenceData (C : CollusionEvidencePackage) where
  parallelConductClosed : C.parallelConduct
  facilitatingPracticesClosed : C.facilitatingPractices
  exchangeOfInformationClosed : C.exchangeOfInformation
  marketStructureFacilitatingClosed : C.marketStructureFacilitating
  plusFactorsClosed : C.plusFactors

def CollusionEvidenceClosed (C : CollusionEvidencePackage) : Prop :=
  C.parallelConduct ∧ C.facilitatingPractices ∧ C.exchangeOfInformation ∧ C.marketStructureFacilitating ∧ C.plusFactors

theorem collusion_evidence_closed_from_evidence (C : CollusionEvidencePackage) (E : CollusionEvidenceData C) : CollusionEvidenceClosed C :=
  And.intro E.parallelConductClosed
    (And.intro E.facilitatingPracticesClosed
      (And.intro E.exchangeOfInformationClosed
        (And.intro E.marketStructureFacilitatingClosed E.plusFactorsClosed)))

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse