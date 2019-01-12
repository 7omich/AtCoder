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

void search(char s[400][400], bool memo[400][400], P& p, int m, int n, int h, int w) {
    char now = s[m][n];
    memo[m][n] = true;

    if (m != h-1) {
        char down = s[m+1][n];
        if ((down != now) && (memo[m+1][n] == false)) {
            if (down == '#') {
                p.first = p.first + 1;
            } else {
                p.second = p.second + 1;
            }
            search(s, memo, p, m+1, n, h, w);
        }
    }

    if (m != 0) {
        char up = s[m-1][n];
        if ((up != now) && (memo[m-1][n] == false)) {
            if (up == '#') {
                p.first = p.first + 1;
            } else {
                p.second = p.second + 1;
            }
            search(s, memo, p, m-1, n, h, w);
        }
    }

    if (n != w-1) {
        char right = s[m][n+1];
        if ((right != now) && (memo[m][n+1] == false)) {
            if (right == '#') {
                p.first = p.first + 1;
            } else {
                p.second = p.second + 1;
            }
            search(s, memo, p, m, n+1, h, w);
        }
    }

    if (n != 0) {
        char left = s[m][n-1];
        if ((left != now) && (memo[m][n-1] == false)) {
            if (left == '#') {
                p.first = p.first + 1;
            } else {
                p.second = p.second + 1;
            }
            search(s, memo, p, m, n-1, h, w);
        }
    }
}

int main() {
    cin.tie(0);
    ios::sync_with_stdio(false);

    int h, w;
    cin >> h >> w;
    char s[400][400];
    REP(i, h) {
        REP(j, w) {
            cin >> s[i][j];
        }
    }

    bool memo[400][400];
    REP(i, h) {
        REP(j, w) {
            memo[i][j] = false;
        }
    }

    ll sum = 0;
    REP(i, h) {
        REP(j, w) {
            if (memo[i][j] == false) {
                P p = mp(0, 0);
                if (s[i][j] == '#') {
                    p.first = p.first + 1;
                } else {
                    p.second = p.second + 1;
                }
                search(s, memo, p, i, j, h, w);
                sum += (p.first * p.second);
            }
        }
    }

    cout << sum << '\n';
}
