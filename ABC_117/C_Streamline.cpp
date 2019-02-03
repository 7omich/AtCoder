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

    int n, m;
    cin >> n >> m;

    vector<int> vc;
    REP(i, m) {
        int el;
        cin >> el;
        vc.pb(el);
    }

    if (vc.size() == 1) {
        cout << 0 << '\n';
        return 0;
    }

    sort(vc.begin(), vc.end());

    vector<int> diff;
    vector<int>::iterator it = vc.begin();
	vector<int>::iterator endIt = vc.end();
	while (it < (endIt - 1)) {
		int d = *(it+1) - *it;
        diff.pb(d);
		it++;
	}

    sort(diff.begin(), diff.end());

    int ans = 0;
    int minus;
    if (n >= m) {
        minus = m;
    } else {
        minus = n;
    }
    vector<int>::iterator dit = diff.begin();
	vector<int>::iterator dendIt = diff.end();
	while (dit < (dendIt - minus + 1)) {
		ans += *dit;
		dit++;
	}
    cout << ans << '\n';
    return 0;
}
