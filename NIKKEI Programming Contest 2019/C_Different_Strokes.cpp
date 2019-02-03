#include <iostream>
#include <algorithm>
#include <vector>
#include <utility>
using namespace std;

typedef unsigned long ul;
typedef long long int ll;
typedef pair<int, pair<ll, ll>> P;
#define pb push_back
#define mp make_pair
#define REP(i,n) REPN(i,0,n)
#define REPN(i,m,n) for(int i=m; i<(n); i++)
#define dump(x) cout << #x << " = " << (x) << endl

bool aCompare(const P& firstElement, const P& secondElement) {
    return firstElement.second.first > secondElement.second.first;
}

bool bCompare(const P& firstElement, const P& secondElement) {
    return firstElement.second.second > secondElement.second.second;
}

int main() {
    cin.tie(0);
    ios::sync_with_stdio(false);

    int n;
    vector<P> v, asorted, bsorted;
    cin >> n;
    REP(i, n) {
        ll a;
        ll b;
        cin >> a >> b;
        pair<ll, ll> pair = mp(a, b);
        P ipair = mp(i, pair);
        v.pb(ipair);
    }

    asorted = v;
    bsorted = v;
    sort(asorted.begin(), asorted.end(), aCompare);
    sort(bsorted.begin(), bsorted.end(), bCompare);

    ll ascore = 0;
    ll bscore = 0;
    vector<int> erased;

    while (asorted.size() != 0) {
        int amaxindex = asorted[0].first;
        if (bsorted.size() == 0) {
            ascore += v[amaxindex].second.first;
            asorted.erase(asorted.begin());
            continue;
        }
        int bmaxindex = bsorted[0].first;
        if (amaxindex == bmaxindex) {
            bsorted.erase(bsorted.begin());
            bmaxindex = bsorted[0].first;
        }
        if (binary_search(erased.begin(), erased.end(), amaxindex) || binary_search(erased.begin(), erased.end(), bmaxindex)) {
            if (binary_search(erased.begin(), erased.end(), amaxindex)) {
                asorted.erase(asorted.begin());
            }
            if (binary_search(erased.begin(), erased.end(), bmaxindex)) {
                bsorted.erase(bsorted.begin());
            }
            continue;
        }
        if (v[amaxindex].second.first - v[bmaxindex].second.second >= v[bmaxindex].second.first - v[amaxindex].second.second) {
            ascore += v[amaxindex].second.first;
            bscore += v[bmaxindex].second.second;
            dump(ascore);
            dump(bscore);
        } else {
            ascore += v[bmaxindex].second.first;
            bscore += v[amaxindex].second.second;
            dump(ascore);
            dump(bscore);
        }
        asorted.erase(asorted.begin());
        bsorted.erase(bsorted.begin());

        auto ait = lower_bound(erased.begin(), erased.end(), amaxindex);
        erased.insert(ait, amaxindex);
        auto bit = lower_bound(erased.begin(), erased.end(), bmaxindex);
        erased.insert(bit, bmaxindex);
    }

    cout << ascore - bscore << '\n';
}
