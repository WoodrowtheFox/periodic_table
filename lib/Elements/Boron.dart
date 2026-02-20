import 'package:periodic_table/Elements.dart';

//This is for the data of Boron
class Actinium extends Elements{
//This is used to get the elements name as a string @return - the element name
    @override
    getElementname() {return "Boron";}

///This is used to get the atomic number of an element @return - the atomic number
    @override
    getAtomicnumber() {return 5;}

//This is used to get the atomic mass of an element @return - the atomic mass
    @override
    getAtomicmass() {return 10.81;}

//This is used to get the group number of an element @return - the group number
    @override
    getGroupnumber() {return 13;}

//This is used to get the number of valence elctrons @return - returns the number of valence electrons
    @override 
    getvalenceelectrons() {return 3;}

//This is used to get the periodic number of an element @return - the periodic number
    @override
    getPeriodnumber() {return 2;}

//This is used to get the family name of an element @return - the family name
    @override
    getFamilyname() {return "Metalloid";}

//This is used to get the common uses of an element @return - the common uses
    @override
    getcommonuses() {return "Semiconductors, Fertilizers";}

//This is used to get the ionic state of the element @return - the ionic state
    @override
    getionicstate() {return 0;}

//This is used to get the image name of an element @return - the image name
    @override
    getImagename() {return "B-base.png";}

//This is used to get how many electrons are in each shell of an element @return - returns a hashnmap of all the shells
    @override
    getshelltotals() {
        var myhash = <String,int>{};
        myhash["1s"] = 2;
        myhash["2s"] = 2;
        myhash["2p"] = 1;
        return myhash;
    }
}
