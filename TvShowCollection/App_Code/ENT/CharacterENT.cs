using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CharacterENT
/// </summary>
namespace TvShowCollection.ENT
{
    public class CharacterENT
    {
        #region Constructor
        public CharacterENT()
        {

        }
        #endregion Constructor

        #region Id
        protected String _Id;
        public String Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
            }
        }
        #endregion Id

        #region Name
        protected String _Name;
        public String Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
            }
        }
        #endregion Name

        #region Image
        protected Image _Image;
        public Image Image
        {
            get
            {
                return _Image;
            }
            set
            {
                _Image = value;
            }
        }
        #endregion Image
    }
}