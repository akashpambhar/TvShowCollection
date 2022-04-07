using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ShowENT
/// </summary>
namespace TvShowCollection.ENT
{
    public class ShowENT
    {
        #region Constructor
        public ShowENT()
        {

        }
        #endregion Constructor

        #region Id
        protected Int32 _Id;
        public Int32 Id
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

        #region Language
        protected String _Language;
        public String Language
        {
            get
            {
                return _Language;
            }
            set
            {
                _Language = value;
            }
        }
        #endregion Language

        #region Genres
        protected List<String> _Genres;
        public List<String> Genres
        {
            get
            {
                return _Genres;
            }
            set
            {
                _Genres = value;
            }
        }
        #endregion Genres
    }
}