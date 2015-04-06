#include <iostream>
#include <string>
#include <sstream>


using namespace std;
string time (int seconds)
{
    ostringstream output;
    int minutes;
    int hours;
    if (seconds >= 60) {
        minutes = seconds/60;
        seconds = seconds - minutes*60;
        if (minutes >= 60) {
            hours = minutes/60;
            minutes = minutes - hours*60;
            output << hours << ":" << minutes << ":" << seconds;

        }
        else {
            output << "00:" << minutes << ":" << seconds;
        }
    }
    else {
        output << "00:00:" << seconds;
    }
    return output.str();
}

int main () {
    int a = 3633;
    cout << time(a);
}
