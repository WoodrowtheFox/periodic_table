import 'package:periodic_table/Elements.dart';

//This is for the data of Americium
class Americium extends Elements{
//This is used to get the elements name as a string @return - the element name
    @override
    getElementname() {return "Americium";}

///This is used to get the atomic number of an element @return - the atomic number
    @override
    getAtomicnumber() {return 95;}

//This is used to get the atomic mass of an element @return - the atomic mass
    @override
    getAtomicmass() {return 243.061380;}

//This is used to get the group number of an element @return - the group number
    @override
    getGroupnumber() {return 10;}

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
    getcommonuses() {return "Smoke Detectors, Sheet Thickness Gauges";}

//This is used to get the ionic state of the element @return - the ionic state
    @override
    getionicstate() {return 3;}

//This is used to get the image name of an element @return - the image name
    @override
    getImagename() {return "Am-base.png";}

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
        myhash["7s"] = 2;
        return myhash;
    }
}
