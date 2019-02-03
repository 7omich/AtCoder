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
#define ALL(a) (a).begin(),(a).end()
#define dump(x) cout << #x << " = " << (x) << endl

int main() {
    cin.tie(0);
    ios::sync_with_stdio(false);

    int n;
    cin >> n;
    int l[n];
    REP(i, n) {
        cin >> l[i];
    }

    int max = l[0];
    int sum = 0;

    REP(i, n) {
        if (max < l[i]) {
            max = l[i];
        }
        sum += l[i];
    }

    if (max < (sum - max)) {
        cout << "Yes" << '\n';
    } else {
        cout << "No" << '\n';
    }
}
