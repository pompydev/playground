#include <iostream>

#pragma GCC optimize("O3")
#pragma GCC optimize("Ofast")
#pragma GCC optimization("unroll-loops")

#define N 3

using namespace std;

int main()
{
    // faster IO
    ios::sync_with_stdio(false);
    cin.tie(NULL);

    int sum = 0;
    int nums[N];

    for (int i = 0; i < N; i++)
    {
        cin >> nums[i];
        sum += nums[i];

        cout << nums[i];

        if (i < N - 1)
            cout << " + ";
    }

    cout << " = " << sum << "\n";
}
