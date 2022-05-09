using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SearchShowENT
/// </summary>
namespace TvShowCollection.ENT
{
    public class SearchShowENT
    {
        #region Constructor
        public SearchShowENT()
        {
            
        }
        #endregion Constructor

        #region Show
        protected ShowENT _Show;
        public ShowENT Show
        {
            get
            {
                return _Show;
            }
            set
            {
                _Show = value;
            }
        }
        #endregion Show
    }
}