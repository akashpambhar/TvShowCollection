using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ActorENT
/// </summary>
namespace TvShowCollection.ENT
{
    public class ActorENT
    {
        #region Constructor
        public ActorENT()
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

        #region Birthday
        protected String _Birthday;
        public String Birthday
        {
            get
            {
                return _Birthday;
            }
            set
            {
                _Birthday = value;
            }
        }
        #endregion Birthday

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

        #region Updated
        protected String _Updated;
        public String Updated
        {
            get
            {
                return _Updated;
            }
            set
            {
                _Updated = value;
            }
        }
        #endregion Updated
    }
}