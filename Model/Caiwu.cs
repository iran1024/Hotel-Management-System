using System;
namespace iRan.Model
{
	/// <summary>
	/// Caiwu:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Caiwu
	{
		public Caiwu()
		{}
		#region Model
		private DateTime _cjtime;
		private decimal? _theprice;
		/// <summary>
		/// 
		/// </summary>
		public DateTime CJTime
		{
			set{ _cjtime=value;}
			get{return _cjtime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? ThePrice
		{
			set{ _theprice=value;}
			get{return _theprice;}
		}
		#endregion Model

	}
}

