// AC

#include <iostream>
#include <algorithm>
#define REP(i,n) for(int i=0; i<n; i++)
using namespace std;

typedef unsigned long ul;
typedef pair<ul, ul> P;

int main() {
    cin.tie(0);
    ios::sync_with_stdio(false);

    int n, a, b;
    cin >> n >> a >> b;
    int p[n];

    REP(i, n) {
        cin >> p[i];
    }

    int c1 = 0;
    int c2 = 0;
    int c3 = 0;
    REP(i, n) {
        if (p[i] <= a) {
            c1++;
        } else if ((a < p[i]) && (p[i] <= b)) {
            c2++;
        } else {
            c3++;
        }
    }

    int ans = c1;

    if (ans > c2) {
        ans = c2;
    }
    if (ans > c3) {
        ans = c3;
    }

    cout << ans << '\n';
}
