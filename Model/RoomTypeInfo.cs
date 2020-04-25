using System;
namespace iRan.Model
{
	/// <summary>
	/// RoomTypeInfo:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class RoomTypeInfo
	{
		public RoomTypeInfo()
		{}
		#region Model
		private int _roomtype;
		private int _bedtype;
		private string _syno;
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
		public string Syno
		{
			set{ _syno=value;}
			get{return _syno;}
		}
		#endregion Model

	}
}

