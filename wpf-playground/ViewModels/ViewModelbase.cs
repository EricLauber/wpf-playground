/*
    Title:       wpf_playground
    Class:       ViewModelbase
    Author:      Eric Lauber
  
    Summary:
    This is a basic ViewModel class for use in demonsrating 
    Model-View-ViewModel as applied with Windows Presentation Foundation.
    It features some basic member properties, utilizes ObservableCollections
    to aggregate child ViewModels, and can exit the program.
  
    If desired, this ViewModel might, upon user input, access a data source
    to populate the data layer of models, or may utilize a model-layer
    Repository to populate itself.
  
    Notes:
    1.  N/A
  
    Change log:
    Date            By      Description
    10/23/2018      EAL     Creation
 */

using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace wpf_playground.ViewModels
{
    /// <summary>
    /// Contains properties inherited by all ViewModels.
    /// </summary>
    public class ViewModelBase : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        public void NotifyPropertyChanged([CallerMemberName] string propertyName = "") { PropertyChanged(this, new PropertyChangedEventArgs(propertyName)); }
    }
}
