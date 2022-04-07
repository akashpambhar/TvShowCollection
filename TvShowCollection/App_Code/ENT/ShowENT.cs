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

        #region Rating
        protected Rating _Rating;
        public Rating Rating
        {
            get
            {
                return _Rating;
            }
            set
            {
                _Rating = value;
            }
        }
        #endregion Rating

        #region Weight
        protected String _Weight;
        public String Weight
        {
            get
            {
                return _Weight;
            }
            set
            {
                _Weight = value;
            }
        }
        #endregion Weight

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

        #region Premiered
        protected String _Premiered;
        public String Premiered
        {
            get
            {
                return _Premiered;
            }
            set
            {
                _Premiered = value;
            }
        }
        #endregion Premiered
    }

    public class Image
    {
        #region Medium
        protected String _Medium;
        public String Medium
        {
            get
            {
                return _Medium;
            }
            set
            {
                _Medium = value;
            }
        }
        #endregion Medium

        #region Original
        protected String _Original;
        public String Original
        {
            get
            {
                return _Original;
            }
            set
            {
                _Original = value;
            }
        }
        #endregion Original
    }

    public class Rating
    {
        #region Average
        protected String _Average;
        public String Average
        {
            get
            {
                return _Average;
            }
            set
            {
                _Average = value;
            }
        }
        #endregion Average
    }
}