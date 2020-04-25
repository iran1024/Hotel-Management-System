using System;
namespace iRan.Model
{
	/// <summary>
	/// Users:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Users
	{
		public Users()
		{}
		#region Model
		private int _uid;
		private string _telnumber;
		private string _pwd;
		private string _fname;
		private string _nickname;
		private string _idcard;
		private int? _checkincount;
		private int? _loginstatus;
		private DateTime? _lastlogintime;
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
		public string TelNumber
		{
			set{ _telnumber=value;}
			get{return _telnumber;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Pwd
		{
			set{ _pwd=value;}
			get{return _pwd;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Fname
		{
			set{ _fname=value;}
			get{return _fname;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Nickname
		{
			set{ _nickname=value;}
			get{return _nickname;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Idcard
		{
			set{ _idcard=value;}
			get{return _idcard;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? CheckinCount
		{
			set{ _checkincount=value;}
			get{return _checkincount;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? LoginStatus
		{
			set{ _loginstatus=value;}
			get{return _loginstatus;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? LastLoginTime
		{
			set{ _lastlogintime=value;}
			get{return _lastlogintime;}
		}
		#endregion Model

	}
}

