using System;
namespace iRan.Model
{
	/// <summary>
	/// CheckIn:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class CheckIn
	{
		public CheckIn()
		{}
		#region Model
		private long _cid;
		private decimal _oid;
		private int _gid;
		private int _uid;
		private DateTime? _checkintime;
		private int? _checkindays;
		private decimal? _ctotalprice;
		private int? _checkinstatus;
		/// <summary>
		/// 
		/// </summary>
		public long Cid
		{
			set{ _cid=value;}
			get{return _cid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal Oid
		{
			set{ _oid=value;}
			get{return _oid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int Gid
		{
			set{ _gid=value;}
			get{return _gid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int Uid
		{
			set{ _uid=value;}
			get{return _uid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? CheckinTime
		{
			set{ _checkintime=value;}
			get{return _checkintime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? CheckinDays
		{
			set{ _checkindays=value;}
			get{return _checkindays;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? cTotalPrice
		{
			set{ _ctotalprice=value;}
			get{return _ctotalprice;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? CheckinStatus
		{
			set{ _checkinstatus=value;}
			get{return _checkinstatus;}
		}
		#endregion Model

	}
}

