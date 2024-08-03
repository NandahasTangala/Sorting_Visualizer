
#include<bits/stdc++.h>
using namespace std;
#define int long long
 
void solve(){
    int n;
    cin>>n;
    int a[n];
    for(int i=0;i<n;i++){
        cin>>a[i];
        a[i]/=2;
    }
    int i=0,j=n-1;
    while(a[i]!=0) i++;
    while(a[j]!=0) j--;
    if(i==j){
        cout<<"NO"<<endl;
        return;
    }
    while(i<j){
        if(a[i]!=a[j]){
            cout<<"NO"<<endl;
            return;
        }
        i++;
        j--;
    }
    cout<<"YES"<<endl;
    return;
}
int32_t main() {
    int t;
    cin>>t;
    while(t--){
        solve();
    }
    return 0;
}