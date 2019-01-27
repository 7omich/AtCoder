// AC

#include <iostream>
#include <algorithm>
#include <vector>
#include <utility>
using namespace std;

typedef unsigned long ul;
typedef long long int ll;
typedef pair<ll, ll> P;
#define pb push_back
#define mp make_pair
#define REP(i,n) REPN(i,0,n)
#define REPN(i,m,n) for(int i=m; i<(n); i++)
#define dump(x) cout << #x << " = " << (x) << endl

int main() {
    cin.tie(0);
    ios::sync_with_stdio(false);

    int ab, bc, ca;
    cin >> ab >> bc >> ca;

    int l1, tmp, l2;
    l1 = min(ab, bc);
    tmp = max(ab, bc);
    l2 = min(tmp, ca);

    cout << l1 * l2 / 2 << '\n';
}
