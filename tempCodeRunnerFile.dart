#include<bits/stdc++.h>
using namespace std;
#define int long long

void solve() {
    string name;
    cin >> name;
    int n;
    cin >> n;
    map<string, int> ans;
    while (n--) {
        string name1;
        cin >> name1;
        string act;
        cin >> act;
        if (act == "posted" || act == "commented") {
            string var;
            cin >> var;
        }
        string name2;
        cin >> name2;
       
        name2 = name2.substr(0, name2.size() - 2);
        string s;
        cin>>s;
        int factor = 5;
        if (act == "posted") factor = 15;
        else if (act == "commented") factor = 10; 
        if (name1 != name) ans[name1] += factor;
        if (name2 != name) ans[name2] += factor;
    }

   vector<pair<int, string> > ret;
    for (map<string, int>::iterator it = ans.begin(); it != ans.end(); it++)
        ret.push_back(make_pair(-it->second, it->first));
    sort(ret.begin(), ret.end());
    int m = ret.size();
    for (int i = 0; i < m; i++)
        cout << ret[i].second << endl;
     return ;
}

int32_t main() {
    int t = 1;
    // cin >> t;
    while (t--) {
        solve();
    }
    return 0;
}