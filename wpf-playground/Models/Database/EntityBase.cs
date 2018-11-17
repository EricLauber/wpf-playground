/*
    Title:       wpf_playground
    Class:       EntityBase
    Author:      Eric Lauber
  
    Summary:
    This class defines member properties that every database
    entity will have. Thus far that's just an integer Id.
    By sharing a base class, other objects such as future
    record containers can treat any database record object
    inheriting this one in a similar manner.
    Hurray, inheritance and polymorphism!
  
    Notes:
    1.  N/A
  
    Change log:
    Date            By      Description
    11/16/2018      EAL     Creation
 */

namespace wpf_playground.Models.Database
{
    class EntityBase
    {
        public int Id { get; set; }
    }
}
