using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CrewENT
/// </summary>
namespace TvShowCollection.ENT
{
    public class CrewENT
    {
        #region Constructor
        public CrewENT()
        {

        }
        #endregion Constructor

        #region Type
        protected String _Type;
        public String Type
        {
            get
            {
                return _Type;
            }
            set
            {
                _Type = value;
            }
        }
        #endregion Type

        #region Actor
        protected ActorENT _Actor;
        [JsonProperty("person")]
        public ActorENT Actor
        {
            get
            {
                return _Actor;
            }
            set
            {
                _Actor = value;
            }
        }
        #endregion Actor
    }
}