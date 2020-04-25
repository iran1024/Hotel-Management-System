using System;
namespace iRan.Model
{
	/// <summary>
	/// ExService:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class ExService
	{
		public ExService()
		{}
		#region Model
		private int _goodsid;
		private string _goodsname;
		private decimal? _goodsprice;
		private int? _goodsstock;
		private int? _goodsstatus;
		/// <summary>
		/// 
		/// </summary>
		public int GoodsID
		{
			set{ _goodsid=value;}
			get{return _goodsid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string GoodsName
		{
			set{ _goodsname=value;}
			get{return _goodsname;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? GoodsPrice
		{
			set{ _goodsprice=value;}
			get{return _goodsprice;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? GoodsStock
		{
			set{ _goodsstock=value;}
			get{return _goodsstock;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? GoodsStatus
		{
			set{ _goodsstatus=value;}
			get{return _goodsstatus;}
		}
		#endregion Model

	}
}

