// AC

#include <iostream>
#define REP(i,n) for(int i=0; i<n; i++)
using namespace std;

int main() {
    cin.tie(0);
    ios::sync_with_stdio(false);

    char input[4][4];
    REP(i, 4) {
        REP(j, 4) {
            cin >> input[i][j];
        }
    }

    REP(i, 4) {
        REP(j, 4) {
            if (j != 3) {
                cout << input[3-i][3-j] << ' ';
            } else {
                cout << input[3-i][3-j] << '\n';
            }
        }
    }
}
