import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure ArrowDebreuPackage where
  commoditySpace : Type u
  priceSpace : Type v
  consumerSpace : Type w
  initialEndowments : commoditySpace → commoditySpace
  preferences : commoditySpace → Prop
  productionSets : commoditySpace → Prop
  equilibriumCondition : Prop
  welfareCondition : Prop

structure GeneralEquilibriumEvidence (A : ArrowDebreuPackage) where
  equilibriumConditionClosed : A.equilibriumCondition
  welfareConditionClosed : A.welfareCondition

def GeneralEquilibriumClosed (A : ArrowDebreuPackage) : Prop :=
  A.equilibriumCondition ∧ A.welfareCondition

theorem general_equilibrium_closed_from_evidence (A : ArrowDebreuPackage) (E : GeneralEquilibriumEvidence A) :
    GeneralEquilibriumClosed A := by
  exact And.intro E.equilibriumConditionClosed E.welfareConditionClosed

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse