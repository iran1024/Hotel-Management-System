using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace iRan.DAL
{
	/// <summary>
	/// 数据访问类:AdminsDAL
	/// </summary>
	public partial class AdminsDAL
	{
		public AdminsDAL()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("AdminID", "Admins"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int AdminID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from Admins");
			strSql.Append(" where AdminID=@AdminID");
			SqlParameter[] parameters = {
					new SqlParameter("@AdminID", SqlDbType.Int,4)
			};
			parameters[0].Value = AdminID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(iRan.Model.Admins model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into Admins(");
			strSql.Append("AdminAccount,AdminPwd)");
			strSql.Append(" values (");
			strSql.Append("@AdminAccount,@AdminPwd)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@AdminAccount", SqlDbType.VarChar,12),
					new SqlParameter("@AdminPwd", SqlDbType.VarChar,12)};
			parameters[0].Value = model.AdminAccount;
			parameters[1].Value = model.AdminPwd;

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
		public bool Update(iRan.Model.Admins model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update Admins set ");
			strSql.Append("AdminAccount=@AdminAccount,");
			strSql.Append("AdminPwd=@AdminPwd");
			strSql.Append(" where AdminID=@AdminID");
			SqlParameter[] parameters = {
					new SqlParameter("@AdminAccount", SqlDbType.VarChar,12),
					new SqlParameter("@AdminPwd", SqlDbType.VarChar,12),
					new SqlParameter("@AdminID", SqlDbType.Int,4)};
			parameters[0].Value = model.AdminAccount;
			parameters[1].Value = model.AdminPwd;
			parameters[2].Value = model.AdminID;

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
		public bool Delete(int AdminID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Admins ");
			strSql.Append(" where AdminID=@AdminID");
			SqlParameter[] parameters = {
					new SqlParameter("@AdminID", SqlDbType.Int,4)
			};
			parameters[0].Value = AdminID;

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
		public bool DeleteList(string AdminIDlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Admins ");
			strSql.Append(" where AdminID in ("+AdminIDlist + ")  ");
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
		public iRan.Model.Admins GetModel(int AdminID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 AdminID,AdminAccount,AdminPwd from Admins ");
			strSql.Append(" where AdminID=@AdminID");
			SqlParameter[] parameters = {
					new SqlParameter("@AdminID", SqlDbType.Int,4)
			};
			parameters[0].Value = AdminID;

			iRan.Model.Admins model=new iRan.Model.Admins();
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
		public iRan.Model.Admins DataRowToModel(DataRow row)
		{
			iRan.Model.Admins model=new iRan.Model.Admins();
			if (row != null)
			{
				if(row["AdminID"]!=null && row["AdminID"].ToString()!="")
				{
					model.AdminID=int.Parse(row["AdminID"].ToString());
				}
				if(row["AdminAccount"]!=null)
				{
					model.AdminAccount=row["AdminAccount"].ToString();
				}
				if(row["AdminPwd"]!=null)
				{
					model.AdminPwd=row["AdminPwd"].ToString();
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
			strSql.Append("select AdminID,AdminAccount,AdminPwd ");
			strSql.Append(" FROM Admins ");
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
			strSql.Append(" AdminID,AdminAccount,AdminPwd ");
			strSql.Append(" FROM Admins ");
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
			strSql.Append("select count(1) FROM Admins ");
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
				strSql.Append("order by T.AdminID desc");
			}
			strSql.Append(")AS Row, T.*  from Admins T ");
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
			parameters[0].Value = "Admins";
			parameters[1].Value = "AdminID";
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

