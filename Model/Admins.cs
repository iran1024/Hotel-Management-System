using System;
namespace iRan.Model
{
	/// <summary>
	/// Admins:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Admins
	{
		public Admins()
		{}
		#region Model
		private int _adminid;
		private string _adminaccount;
		private string _adminpwd;
		/// <summary>
		/// 
		/// </summary>
		public int AdminID
		{
			set{ _adminid=value;}
			get{return _adminid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string AdminAccount
		{
			set{ _adminaccount=value;}
			get{return _adminaccount;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string AdminPwd
		{
			set{ _adminpwd=value;}
			get{return _adminpwd;}
		}
		#endregion Model

	}
}

