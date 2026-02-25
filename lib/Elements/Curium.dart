import 'package:periodic_table/Elements.dart';

//This is for the data of Curium
class Curium extends Elements{
//This is used to get the elements name as a string @return - the element name
    @override
    getElementname() {return "Curium";}

///This is used to get the atomic number of an element @return - the atomic number
    @override
    getAtomicnumber() {return 96;}

//This is used to get the atomic mass of an element @return - the atomic mass
    @override
    getAtomicmass() {return 247.07035;}

//This is used to get the group number of an element @return - the group number
    @override
    getGroupnumber() {return 11;}

//This is used to get the number of valence elctrons @return - returns the number of valence electrons
    @override 
    getvalenceelectrons() {return 2;}

//This is used to get the periodic number of an element @return - the periodic number
    @override
    getPeriodnumber() {return 7;}

//This is used to get the family name of an element @return - the family name
    @override
    getFamilyname() {return "Actinide";}

//This is used to get the common uses of an element @return - the common uses
    @override
    getcommonuses() {return "Mineral Analyzers, Scientific Instruments";}

//This is used to get the ionic state of the element @return - the ionic state
    @override
    getionicstate() {return 3;}

//This is used to get the image name of an element @return - the image name
    @override
    getImagename() {return "Cm-base.png";}

//This is used to get how many electrons are in each shell of an element @return - returns a hashnmap of all the shells
    @override
    getshelltotals() {
        var myhash = <String,int>{};
        myhash["1s"] = 2;
        myhash["2s"] = 2;
        myhash["2p"] = 6;
        myhash["3s"] = 2;
        myhash["3p"] = 6;
        myhash["3d"] = 10;
        myhash["4s"] = 2;
        myhash["4p"] = 6;
        myhash["4d"] = 10;
        myhash["4f"] = 14;
        myhash["5s"] = 2;
        myhash["5p"] = 6;
        myhash["5d"] = 10;
        myhash["5f"] = 7;
        myhash["6s"] = 2;
        myhash["6p"] = 6;
        myhash["6d"] = 1;
        myhash["7s"] = 2;
        myhash["7p"] = 0;
        return myhash;
    }
}
