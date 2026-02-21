import 'package:periodic_table/Elements.dart';

//This is for the data of Bismuth
class Bismuth extends Elements{
//This is used to get the elements name as a string @return - the element name
    @override
    getElementname() {return "Bismuth";}

///This is used to get the atomic number of an element @return - the atomic number
    @override
    getAtomicnumber() {return 83;}

//This is used to get the atomic mass of an element @return - the atomic mass
    @override
    getAtomicmass() {return 208.98040;}

//This is used to get the group number of an element @return - the group number
    @override
    getGroupnumber() {return 15;}

//This is used to get the number of valence elctrons @return - returns the number of valence electrons
    @override 
    getvalenceelectrons() {return 5;}

//This is used to get the periodic number of an element @return - the periodic number
    @override
    getPeriodnumber() {return 6;}

//This is used to get the family name of an element @return - the family name
    @override
    getFamilyname() {return "Post-Transition Metal";}

//This is used to get the common uses of an element @return - the common uses
    @override
    getcommonuses() {return "Fire Sparklers, Fuses";}

//This is used to get the ionic state of the element @return - the ionic state
    @override
    getionicstate() {return 3;}

//This is used to get the image name of an element @return - the image name
    @override
    getImagename() {return "Bi-base.png";}

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
        myhash["6s"] = 2;
        myhash["6p"] = 3;
        return myhash;
    }
}
