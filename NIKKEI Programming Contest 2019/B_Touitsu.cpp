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

    int n;
    char a[100], b[100], c[100];
    cin >> n >> a >> b >> c;

    ll ans = 0;

    REP(i, n) {
        if (a[i] == b[i] || b[i] == c[i] || a[i] == c[i]) {
            ans++;
        } else {
            ans += 2;
        }
        if (a[i] == b[i] && b[i] == c[i]) {
            ans--;
        }
    }

    cout << ans << '\n';
}
