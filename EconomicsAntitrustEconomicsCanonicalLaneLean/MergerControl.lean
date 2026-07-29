import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure MergerPackage where
  preMergerHHI : ℝ
  postMergerHHI : ℝ
  maIndex : ℝ
  entryConditions : Prop
  efficiencies : Prop
  failingFirmDefense : Prop

structure MergerEvidence (M : MergerPackage) where
  hhiDeltaClosed : M.postMergerHHI - M.preMergerHHI > 0
  entryConditionsClosed : M.entryConditions
  efficienciesClosed : M.efficiencies
  failingFirmDefenseClosed : M.failingFirmDefense

def MergerClosed (M : MergerPackage) : Prop :=
  M.postMergerHHI - M.preMergerHHI > 0 ∧
  M.entryConditions ∧
  M.efficiencies ∧
  M.failingFirmDefense

theorem merger_closed_from_evidence (M : MergerPackage) (E : MergerEvidence M) : MergerClosed M := by
  exact And.intro E.hhiDeltaClosed
    (And.intro E.entryConditionsClosed
      (And.intro E.efficienciesClosed E.failingFirmDefenseClosed))

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse