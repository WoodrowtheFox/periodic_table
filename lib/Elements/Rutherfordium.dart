import 'package:periodic_table/Elements.dart';

//This is for the data of Rutherfordium
class Rutherfordium extends Elements{
//This is used to get the elements name as a string @return - the element name
    @override
    getElementname() {return "Rutherfordium";}

///This is used to get the atomic number of an element @return - the atomic number
    @override
    getAtomicnumber() {return 104;}

//This is used to get the atomic mass of an element @return - the atomic mass
    @override
    getAtomicmass() {return 267.122;}

//This is used to get the group number of an element @return - the group number
    @override
    getGroupnumber() {return 4;}

//This is used to get the number of valence elctrons @return - returns the number of valence electrons
    @override 
    getvalenceelectrons() {return 2;}

//This is used to get the periodic number of an element @return - the periodic number
    @override
    getPeriodnumber() {return 7;}

//This is used to get the family name of an element @return - the family name
    @override
    getFamilyname() {return "Transition Metal";}

//This is used to get the common uses of an element @return - the common uses
    @override
    getcommonuses() {return "No Uses";}

//This is used to get the ionic state of the element @return - the ionic state
    @override
    getionicstate() {return 0;}

//This is used to get the image name of an element @return - the image name
    @override
    getImagename() {return "Rf-base.png";}

//This is used to get how many electrons are in each shell of an element @return - returns a hashnmap of all the shells
    @override
    getshelltotals() {
        var shell = <String,int>{};
        shell["1s"] = 2;
        shell["2s"] = 2;
        shell["2p"] = 6;
        shell["3s"] = 2;
        shell["3p"] = 6;
        shell["3d"] = 10;
        shell["4s"] = 2;
        shell["4p"] = 6;
        shell["4d"] = 10;
        shell["4f"] = 14;
        shell["5s"] = 2;
        shell["5p"] = 6;
        shell["5d"] = 10;
        shell["5f"] = 14;
        shell["6s"] = 2;
        shell["6p"] = 6;
        shell["6d"] = 0;
        shell["7s"] = 2;
        shell["7p"] = 0;
        return shell;
    }
}
