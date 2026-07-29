import EconomicsAntitrustEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

def AntitrustWitnessClosed (O : AntitrustAdmittedObject) : Prop :=
  O.marketEquilibriumHolds

structure AntitrustAdmittedObject where
  marketType : Type
  equilibriumPrice : marketType
  allocation : marketType → marketType
  consumerSurplus : Prop
  producerSurplus : Prop
  marketEquilibriumHolds : Prop
  conclusion : marketEquilibriumHolds

theorem theorem_statement_internalized : Prop :=
  ∀ (A : AdmissibleClass), admittedClosure A → ConstrainedAntitrustClosure A

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse