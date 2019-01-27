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

    int s;
    cin >> s;

    int now = s;
    vector<int> v;
    v.pb(s);

    bool flag = true;

    while (flag) {
        int newnum;
        if (now % 2 == 0) {
            newnum = now / 2;
        } else {
            newnum = now * 3 + 1;
        }

        auto it = find(v.begin(), v.end(), newnum);
        if (it != v.end()) {
            flag = false;
        }
        v.pb(newnum);
        now = newnum;
    }

    cout << v.size() << '\n';
}
