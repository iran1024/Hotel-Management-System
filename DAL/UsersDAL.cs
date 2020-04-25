using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace iRan.DAL
{
	/// <summary>
	/// 数据访问类:UsersDAL
	/// </summary>
	public partial class UsersDAL
	{
		public UsersDAL()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("Uid", "Users"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string TelNumber,string Idcard,int Uid)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from Users");
			strSql.Append(" where TelNumber=@TelNumber and Idcard=@Idcard and Uid=@Uid ");
			SqlParameter[] parameters = {
					new SqlParameter("@TelNumber", SqlDbType.VarChar,11),
					new SqlParameter("@Idcard", SqlDbType.VarChar,18),
					new SqlParameter("@Uid", SqlDbType.Int,4)			};
			parameters[0].Value = TelNumber;
			parameters[1].Value = Idcard;
			parameters[2].Value = Uid;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(iRan.Model.Users model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into Users(");
			strSql.Append("TelNumber,Pwd,Fname,Nickname,Idcard,CheckinCount,LoginStatus,LastLoginTime)");
			strSql.Append(" values (");
			strSql.Append("@TelNumber,@Pwd,@Fname,@Nickname,@Idcard,@CheckinCount,@LoginStatus,@LastLoginTime)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@TelNumber", SqlDbType.VarChar,11),
					new SqlParameter("@Pwd", SqlDbType.VarChar,32),
					new SqlParameter("@Fname", SqlDbType.VarChar,16),
					new SqlParameter("@Nickname", SqlDbType.VarChar,16),
					new SqlParameter("@Idcard", SqlDbType.VarChar,18),
					new SqlParameter("@CheckinCount", SqlDbType.Int,4),
					new SqlParameter("@LoginStatus", SqlDbType.Int,4),
					new SqlParameter("@LastLoginTime", SqlDbType.DateTime)};
			parameters[0].Value = model.TelNumber;
			parameters[1].Value = model.Pwd;
			parameters[2].Value = model.Fname;
			parameters[3].Value = model.Nickname;
			parameters[4].Value = model.Idcard;
			parameters[5].Value = model.CheckinCount;
			parameters[6].Value = model.LoginStatus;
			parameters[7].Value = model.LastLoginTime;

			object obj = DbHelperSQL.GetSingle(strSql.ToString(),parameters);
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(iRan.Model.Users model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update Users set ");
			strSql.Append("Pwd=@Pwd,");
			strSql.Append("Fname=@Fname,");
			strSql.Append("Nickname=@Nickname,");
			strSql.Append("CheckinCount=@CheckinCount,");
			strSql.Append("LoginStatus=@LoginStatus,");
			strSql.Append("LastLoginTime=@LastLoginTime");
			strSql.Append(" where Uid=@Uid");
			SqlParameter[] parameters = {
					new SqlParameter("@Pwd", SqlDbType.VarChar,32),
					new SqlParameter("@Fname", SqlDbType.VarChar,16),
					new SqlParameter("@Nickname", SqlDbType.VarChar,16),
					new SqlParameter("@CheckinCount", SqlDbType.Int,4),
					new SqlParameter("@LoginStatus", SqlDbType.Int,4),
					new SqlParameter("@LastLoginTime", SqlDbType.DateTime),
					new SqlParameter("@Uid", SqlDbType.Int,4),
					new SqlParameter("@TelNumber", SqlDbType.VarChar,11),
					new SqlParameter("@Idcard", SqlDbType.VarChar,18)};
			parameters[0].Value = model.Pwd;
			parameters[1].Value = model.Fname;
			parameters[2].Value = model.Nickname;
			parameters[3].Value = model.CheckinCount;
			parameters[4].Value = model.LoginStatus;
			parameters[5].Value = model.LastLoginTime;
			parameters[6].Value = model.Uid;
			parameters[7].Value = model.TelNumber;
			parameters[8].Value = model.Idcard;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int Uid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Users ");
			strSql.Append(" where Uid=@Uid");
			SqlParameter[] parameters = {
					new SqlParameter("@Uid", SqlDbType.Int,4)
			};
			parameters[0].Value = Uid;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(string TelNumber,string Idcard,int Uid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Users ");
			strSql.Append(" where TelNumber=@TelNumber and Idcard=@Idcard and Uid=@Uid ");
			SqlParameter[] parameters = {
					new SqlParameter("@TelNumber", SqlDbType.VarChar,11),
					new SqlParameter("@Idcard", SqlDbType.VarChar,18),
					new SqlParameter("@Uid", SqlDbType.Int,4)			};
			parameters[0].Value = TelNumber;
			parameters[1].Value = Idcard;
			parameters[2].Value = Uid;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 批量删除数据
		/// </summary>
		public bool DeleteList(string Uidlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Users ");
			strSql.Append(" where Uid in ("+Uidlist + ")  ");
			int rows=DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public iRan.Model.Users GetModel(int Uid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 Uid,TelNumber,Pwd,Fname,Nickname,Idcard,CheckinCount,LoginStatus,LastLoginTime from Users ");
			strSql.Append(" where Uid=@Uid");
			SqlParameter[] parameters = {
					new SqlParameter("@Uid", SqlDbType.Int,4)
			};
			parameters[0].Value = Uid;

			iRan.Model.Users model=new iRan.Model.Users();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public iRan.Model.Users DataRowToModel(DataRow row)
		{
			iRan.Model.Users model=new iRan.Model.Users();
			if (row != null)
			{
				if(row["Uid"]!=null && row["Uid"].ToString()!="")
				{
					model.Uid=int.Parse(row["Uid"].ToString());
				}
				if(row["TelNumber"]!=null)
				{
					model.TelNumber=row["TelNumber"].ToString();
				}
				if(row["Pwd"]!=null)
				{
					model.Pwd=row["Pwd"].ToString();
				}
				if(row["Fname"]!=null)
				{
					model.Fname=row["Fname"].ToString();
				}
				if(row["Nickname"]!=null)
				{
					model.Nickname=row["Nickname"].ToString();
				}
				if(row["Idcard"]!=null)
				{
					model.Idcard=row["Idcard"].ToString();
				}
				if(row["CheckinCount"]!=null && row["CheckinCount"].ToString()!="")
				{
					model.CheckinCount=int.Parse(row["CheckinCount"].ToString());
				}
				if(row["LoginStatus"]!=null && row["LoginStatus"].ToString()!="")
				{
					model.LoginStatus=int.Parse(row["LoginStatus"].ToString());
				}
				if(row["LastLoginTime"]!=null && row["LastLoginTime"].ToString()!="")
				{
					model.LastLoginTime=DateTime.Parse(row["LastLoginTime"].ToString());
				}
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select Uid,TelNumber,Pwd,Fname,Nickname,Idcard,CheckinCount,LoginStatus,LastLoginTime ");
			strSql.Append(" FROM Users ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" Uid,TelNumber,Pwd,Fname,Nickname,Idcard,CheckinCount,LoginStatus,LastLoginTime ");
			strSql.Append(" FROM Users ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) FROM Users ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby );
			}
			else
			{
				strSql.Append("order by T.Uid desc");
			}
			strSql.Append(")AS Row, T.*  from Users T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "Users";
			parameters[1].Value = "Uid";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

