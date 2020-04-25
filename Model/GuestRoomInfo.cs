using System;
namespace iRan.Model
{
	/// <summary>
	/// GuestRoomInfo:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class GuestRoomInfo
	{
		public GuestRoomInfo()
		{}
		#region Model
		private int _gid;
		private int _roomtype;
		private int _bedtype;
		private int? _area;
		private int? _floordistribution;
		private int? _tolerablenumber;
		private int? _haswlan;
		private decimal? _roomprice;
		private int? _gstatus;
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
		public int RoomType
		{
			set{ _roomtype=value;}
			get{return _roomtype;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int BedType
		{
			set{ _bedtype=value;}
			get{return _bedtype;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? Area
		{
			set{ _area=value;}
			get{return _area;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? FloorDistribution
		{
			set{ _floordistribution=value;}
			get{return _floordistribution;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? TolerableNumber
		{
			set{ _tolerablenumber=value;}
			get{return _tolerablenumber;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? HasWlan
		{
			set{ _haswlan=value;}
			get{return _haswlan;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? RoomPrice
		{
			set{ _roomprice=value;}
			get{return _roomprice;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? GStatus
		{
			set{ _gstatus=value;}
			get{return _gstatus;}
		}
		#endregion Model

	}
}

