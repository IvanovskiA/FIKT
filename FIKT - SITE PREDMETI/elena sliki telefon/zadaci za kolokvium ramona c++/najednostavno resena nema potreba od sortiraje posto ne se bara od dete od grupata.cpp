#include<iostream>
#define max 15
using namespace std;

int main()
{
    int niza[max], brElementi;
    cout << "Broj na elementi: ";
    cin >> brElementi;
    cout << endl;
    for (int i = 0; i < brElementi; i++)
    {
        cout << "Vnesi broj: "; cin >> niza[i];
        cout << endl;
        while (niza[i] > 10 || niza[i] < 1)
        {
            cout << "Nevaliden broj, vnesi povtorno: ";
            cin >> niza[i];
            cout << endl;
        }
    }

    for (int i = 1; i <= 10; i++)
    {
        int brojac = 0;
        for (int j = 0; j < brElementi; j++)
        {
            if (i == niza[j])
                brojac++;
        }
        cout << "Brojot " << i << " go ima " << brojac << " pati." << endl;
    }
    return 0;
}
