using System;
namespace iRan.Model
{
	/// <summary>
	/// CleaningService:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class CleaningService
	{
		public CleaningService()
		{}
		#region Model
		private int _cleanerid;
		private string _cleanstatus;
		/// <summary>
		/// 
		/// </summary>
		public int CleanerId
		{
			set{ _cleanerid=value;}
			get{return _cleanerid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string CleanStatus
		{
			set{ _cleanstatus=value;}
			get{return _cleanstatus;}
		}
		#endregion Model

	}
}

