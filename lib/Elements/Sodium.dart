import 'package:periodic_table/Elements.dart';

//This is for the data of Sodium
class Sodium extends Elements{
//This is used to get the elements name as a string @return - the element name
    @override
    getElementname() {return "Sodium";}

///This is used to get the atomic number of an element @return - the atomic number
    @override
    getAtomicnumber() {return 11;}

//This is used to get the atomic mass of an element @return - the atomic mass
    @override
    getAtomicmass() {return 22.9897693;}

//This is used to get the group number of an element @return - the group number
    @override
    getGroupnumber() {return 1;}

//This is used to get the number of valence elctrons @return - returns the number of valence electrons
    @override 
    getvalenceelectrons() {return 1;}

//This is used to get the periodic number of an element @return - the periodic number
    @override
    getPeriodnumber() {return 3;}

//This is used to get the family name of an element @return - the family name
    @override
    getFamilyname() {return "Alkali Metal";}

//This is used to get the common uses of an element @return - the common uses
    @override
    getcommonuses() {return "Glass, Soap, Baking Soda";}

//This is used to get the ionic state of the element @return - the ionic state
    @override
    getionicstate() {return 1;}

//This is used to get the image name of an element @return - the image name
    @override
    getImagename() {return "Na-base.png";}

//This is used to get how many electrons are in each shell of an element @return - returns a hashnmap of all the shells
    @override
    getshelltotals() {
        var myhash = <String,int>{};
        myhash["1s"] = 2;
        myhash["2s"] = 2;
        myhash["2p"] = 6;
        myhash["3s"] = 1;
        return myhash;
    }
}
