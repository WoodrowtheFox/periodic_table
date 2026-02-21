import 'package:periodic_table/Elements.dart';

//This is for the data of Oxygen
class Actinium extends Elements{
//This is used to get the elements name as a string @return - the element name
    @override
    getElementname() {return "Oxygen";}

///This is used to get the atomic number of an element @return - the atomic number
    @override
    getAtomicnumber() {return 8;}

//This is used to get the atomic mass of an element @return - the atomic mass
    @override
    getAtomicmass() {return 15.999;}

//This is used to get the group number of an element @return - the group number
    @override
    getGroupnumber() {return 16;}

//This is used to get the number of valence elctrons @return - returns the number of valence electrons
    @override 
    getvalenceelectrons() {return 6;}

//This is used to get the periodic number of an element @return - the periodic number
    @override
    getPeriodnumber() {return 2;}

//This is used to get the family name of an element @return - the family name
    @override
    getFamilyname() {return "Nonmetal";}

//This is used to get the common uses of an element @return - the common uses
    @override
    getcommonuses() {return "Oxidizing, Fire";}

//This is used to get the ionic state of the element @return - the ionic state
    @override
    getionicstate() {return -2;}

//This is used to get the image name of an element @return - the image name
    @override
    getImagename() {return "O-base.png";}

//This is used to get how many electrons are in each shell of an element @return - returns a hashnmap of all the shells
    @override
    getshelltotals() {
        var myhash = <String,int>{};
        myhash["1s"] = 2;
        myhash["2s"] = 2;
        myhash["2p"] = 4;
        return myhash;
    }
}
