/*
    Title:       wpf_playground
    Class:       DiscplineEntity
    Author:      Eric Lauber
  
    Summary:
    Represents a record in the [courses].[Disciplines] table.
  
    Notes:
    1.  N/A
  
    Change log:
    Date            By      Description
    11/16/2018      EAL     Creation
 */

namespace wpf_playground.Models.Database
{
    class DisciplineEntity : EntityBase
    {
        public string Name { get; set; }
        public string Abbreviation { get; set; }
        public int CollegeId { get; set; }
    }
}
