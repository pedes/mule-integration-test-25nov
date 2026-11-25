import * from bat::BDD
import * from bat::Assertions
import * from bat::Mutable

---

suite("ticket-checkin-test-suite") in [

  it("Checks in a passenger ticket") in [
    PUT `https://check-in-papi-app-xmva0n.5sc6y6-1.usa-e2.cloudhub.io/api/tickets/ACM444/checkin` with {
      "headers": {
        "Accept": "application/json",
        "Content-Type": "application/json"
      },
      "body": {
        "lastName": "Smith",
        "numBags": 2
      }
    } assert [
      $.response.status mustEqual 200
    ] execute [
      log($.response)
    ]
  ]

]
