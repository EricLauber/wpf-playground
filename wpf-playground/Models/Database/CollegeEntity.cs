/*
    Title:       wpf_playground
    Class:       CollegeEntity
    Author:      Eric Lauber
  
    Summary:
    Represents a record in the [courses].[Colleges] table.
  
    Notes:
    1.  N/A
  
    Change log:
    Date            By      Description
    11/16/2018      EAL     Creation
 */

namespace wpf_playground.Models.Database
{
    class CollegeEntity : EntityBase
    {
        public string Name { get; set; }
    }
}
