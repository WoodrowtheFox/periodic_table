///This is the class used for all of the elements in the perodic table, and stores their data
abstract class Elements {

///This is used to get the elements name as a string @return - the element name
    String getElementname();
  
///This is used to get the atomic number of an element @return - the atomic number
    int getAtomicnumber();
    
///This is used to get the atomic mass of an element @return - the atomic mass
    double getAtomicmass();

///This is used to get the group number of an element @return - the group number
    int getGroupnumber();
  
///This is used to get the number of valence elctrons @return - returns the number of valence electrons
    int getvalenceelectrons();

///This is used to get the periodic number of an element @return - the periodic number
    int getPeriodnumber();
///This is used to get the family name of an element @return - the family name
    String getFamilyname();

//This is used to get the common uses of an element @return - the common uses
    String getcommonuses();

///This is used to get the ionic state of the element @return - the ionic state
    int getionicstate();

//This is used to get the image name of an element @return - the image name
    String getImagename();

///This is used to get how many electrons are in each shell of an element @return - returns a hashnmap of all the shells
    Map<String, int> getshelltotals();
}