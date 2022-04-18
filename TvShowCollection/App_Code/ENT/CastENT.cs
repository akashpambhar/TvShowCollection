using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

/// <summary>
/// Summary description for CastENT
/// </summary>
namespace TvShowCollection.ENT
{
    public class CastENT
    {
        #region Constructor
        public CastENT()
        {

        }
        #endregion Constructor

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

        #region Character
        protected CharacterENT _Character;
        public CharacterENT Character
        {
            get
            {
                return _Character;
            }
            set
            {
                _Character = value;
            }
        }
        #endregion Character

    }
}