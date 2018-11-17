/*
    Title:       wpf_playground
    Class:       CourseEntity
    Author:      Eric Lauber
  
    Summary:
    Represents a record in the [courses].[Courses] table.
  
    Notes:
    1.  N/A
  
    Change log:
    Date            By      Description
    11/16/2018      EAL     Creation
 */

namespace wpf_playground.Models.Database
{
    class CourseEntity : EntityBase
    {
        public string Name { get; set; }
        public string Number { get; set; }
        public int CreditHours { get; set; }
        public bool OfferedFallSemester { get; set; }
        public bool OfferedWinterSemester { get; set; }
        public bool OfferedSummerSemester { get; set; }
        public string Description { get; set; }
        public int DisciplineId { get; set; }
    }
}
