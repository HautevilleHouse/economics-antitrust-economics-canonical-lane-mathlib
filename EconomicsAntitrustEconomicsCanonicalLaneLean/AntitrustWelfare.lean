import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure ConsumerWelfarePackage where
  consumerSurplus : ℝ
  priceEffect : ℝ
  outputEffect : ℝ
  efficiencyGains : Prop

structure ConsumerWelfareEvidence (W : ConsumerWelfarePackage) where
  consumerSurplusPositive : W.consumerSurplus > 0
  priceEffectNegative : W.priceEffect < 0
  outputEffectPositive : W.outputEffect > 0
  efficiencyGainsRealized : W.efficiencyGains

def ConsumerWelfareClosed (W : ConsumerWelfarePackage) : Prop :=
  W.consumerSurplus > 0 ∧ W.priceEffect < 0 ∧ W.outputEffect > 0 ∧ W.efficiencyGains

theorem consumer_welfare_closed (W : ConsumerWelfarePackage) (E : ConsumerWelfareEvidence W) : ConsumerWelfareClosed W :=
  by
    exact And.intro E.consumerSurplusPositive
      (And.intro E.priceEffectNegative
        (And.intro E.outputEffectPositive E.efficiencyGainsRealized))

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse