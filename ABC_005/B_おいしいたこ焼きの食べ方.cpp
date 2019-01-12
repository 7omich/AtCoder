#include <iostream>
#define REP(i,n) for(int i=0; i<n; i++)
using namespace std;

int main() {
    cin.tie(0);
    ios::sync_with_stdio(false);

    int N;
    cin >> N;

    int arr[N];
    REP(i, N) {
        cin >> arr[i];
    }

    int min = arr[0];
    REP(i, N) {
        if (arr[i] < min) {
            min = arr[i];
        }
    }

    cout << min << '\n';
}
