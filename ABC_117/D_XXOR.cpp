// WA

#include <iostream>
#include <algorithm>
#include <vector>
#include <utility>
#include <cmath>
using namespace std;

#define pb push_back
#define mp make_pair
#define REP(i,n) REPN(i,0,n)
#define REPN(i,m,n) for(int i=m; i<(n); i++)
#define Aint(a) (a).begin(),(a).end()
#define dump(x) cout << #x << " = " << (x) << endl

int solve(int n, int k, int keta[50]) {
    int line = n / 2;
    int ans = 0;
    REP(i, 50)
        int aa = 1
        REP(p, 49-i) {
            aa
        }
        int aa = pow(2, 49-i);
        if (k >= aa && keta[i] <= line) {
            k -= aa;
            ans += aa;
        }
    }
    return ans;
}

int main() {
    cin.tie(0);
    ios::sync_with_stdio(false);

    int n, k;
    cin >> n >> k;
    int a[n];
    int pa[n];
    REP(i, n) {
        int tmp;
        cin >> tmp;
        a[i] = tmp;
        pa[i] = tmp;
    }
    int keta[50];

    REP(i, 50) {
        REP(j, n) {
            int aa = pow(2, 49-i);
            if (a[j] >= aa) {
                keta[i] += 1;
                a[j] -= aa;
            }
        }
    }

    while (solve(n, k, keta) > k) {
        k--;
    }

    int fn = solve(n, k, keta);
    int lans = 0;

    REP(i, n) {
        lans += fn ^ pa[i];
    }

    cout << lans << '\n';
}
