using System;
namespace iRan.Model
{
	/// <summary>
	/// ServiceOrder:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class ServiceOrder
	{
		public ServiceOrder()
		{}
		#region Model
		private decimal _oid;
		private int _uid;
		private DateTime? _esordercreatetime;
		private string _esordercontent;
		private decimal? _esordertotalprice;
		private int? _esorderstatus;
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
		public int Uid
		{
			set{ _uid=value;}
			get{return _uid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? esOrderCreateTime
		{
			set{ _esordercreatetime=value;}
			get{return _esordercreatetime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string esOrderContent
		{
			set{ _esordercontent=value;}
			get{return _esordercontent;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? esOrderTotalPrice
		{
			set{ _esordertotalprice=value;}
			get{return _esordertotalprice;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? esOrderStatus
		{
			set{ _esorderstatus=value;}
			get{return _esorderstatus;}
		}
		#endregion Model

	}
}

