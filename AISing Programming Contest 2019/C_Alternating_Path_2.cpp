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

const int dx[] = {1, 0, -1, 0};
const int dy[] = {0, 1, 0, -1};

void search(char s[400][400], bool memo[400][400], P& pair, int m, int n, int h, int w) {
    char now = s[m][n];
    memo[m][n] = true;
    if (now == '#') {
        pair.first++;
    } else {
        pair.second++;
    }

    // dx, dy を使って上下左右の移動をひとまとめに、境界条件もまとめる
    REP(i, 4) {
        int p = m + dx[i];
        int q = n + dy[i];
        if (p >= 0 && p < h && q >= 0 && q < w) {
            if (s[p][q] != s[m][n] && memo[p][q] == false) {
                search(s, memo, pair, p, q, h, w);
            }
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
                P pair = mp(0, 0);
                search(s, memo, pair, i, j, h, w);
                sum += (pair.first * pair.second);
            }
        }
    }

    cout << sum << '\n';
}
