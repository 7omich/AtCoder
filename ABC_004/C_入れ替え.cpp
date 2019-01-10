#include <iostream>
#include <algorithm>
#define REP(i,n) for(int i=0; i<n; i++)
using namespace std;

void rotate_by_one(int arr[]) {
    int tmp = arr[0];
    REP(i, 5) {
        arr[i] = arr[i+1];
    }
    arr[5] = tmp;
}

void rotate(int arr[], int n) {
    REP(i, n) {
        rotate_by_one(arr);
    }
}

int main() {
	cin.tie(0);
	ios::sync_with_stdio(false);

	int n;
	cin >> n;

    int rot_times = n / 5;
    int rem = n % 5;
    int rot_times_mod6 = rot_times % 6;

    int arr[6] = {1, 2, 3, 4, 5, 6};
    rotate(arr, rot_times_mod6);

    REP(i, rem) {
        swap(arr[i], arr[i+1]);
    }

    REP(i, 6) {
        cout << arr[i];
    }
    cout << '\n';
}
