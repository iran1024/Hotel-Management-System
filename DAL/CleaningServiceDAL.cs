﻿using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace iRan.DAL
{
	/// <summary>
	/// 数据访问类:CleaningServiceDAL
	/// </summary>
	public partial class CleaningServiceDAL
	{
		public CleaningServiceDAL()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("CleanerId", "CleaningService"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int CleanerId)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from CleaningService");
			strSql.Append(" where CleanerId=@CleanerId ");
			SqlParameter[] parameters = {
					new SqlParameter("@CleanerId", SqlDbType.Int,4)			};
			parameters[0].Value = CleanerId;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(iRan.Model.CleaningService model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into CleaningService(");
			strSql.Append("CleanerId,CleanStatus)");
			strSql.Append(" values (");
			strSql.Append("@CleanerId,@CleanStatus)");
			SqlParameter[] parameters = {
					new SqlParameter("@CleanerId", SqlDbType.Int,4),
					new SqlParameter("@CleanStatus", SqlDbType.VarChar,5)};
			parameters[0].Value = model.CleanerId;
			parameters[1].Value = model.CleanStatus;

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
		/// 更新一条数据
		/// </summary>
		public bool Update(iRan.Model.CleaningService model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update CleaningService set ");
			strSql.Append("CleanStatus=@CleanStatus");
			strSql.Append(" where CleanerId=@CleanerId ");
			SqlParameter[] parameters = {
					new SqlParameter("@CleanStatus", SqlDbType.VarChar,5),
					new SqlParameter("@CleanerId", SqlDbType.Int,4)};
			parameters[0].Value = model.CleanStatus;
			parameters[1].Value = model.CleanerId;

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
		public bool Delete(int CleanerId)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from CleaningService ");
			strSql.Append(" where CleanerId=@CleanerId ");
			SqlParameter[] parameters = {
					new SqlParameter("@CleanerId", SqlDbType.Int,4)			};
			parameters[0].Value = CleanerId;

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
		public bool DeleteList(string CleanerIdlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from CleaningService ");
			strSql.Append(" where CleanerId in ("+CleanerIdlist + ")  ");
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
		public iRan.Model.CleaningService GetModel(int CleanerId)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 CleanerId,CleanStatus from CleaningService ");
			strSql.Append(" where CleanerId=@CleanerId ");
			SqlParameter[] parameters = {
					new SqlParameter("@CleanerId", SqlDbType.Int,4)			};
			parameters[0].Value = CleanerId;

			iRan.Model.CleaningService model=new iRan.Model.CleaningService();
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
		public iRan.Model.CleaningService DataRowToModel(DataRow row)
		{
			iRan.Model.CleaningService model=new iRan.Model.CleaningService();
			if (row != null)
			{
				if(row["CleanerId"]!=null && row["CleanerId"].ToString()!="")
				{
					model.CleanerId=int.Parse(row["CleanerId"].ToString());
				}
				if(row["CleanStatus"]!=null)
				{
					model.CleanStatus=row["CleanStatus"].ToString();
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
			strSql.Append("select CleanerId,CleanStatus ");
			strSql.Append(" FROM CleaningService ");
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
			strSql.Append(" CleanerId,CleanStatus ");
			strSql.Append(" FROM CleaningService ");
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
			strSql.Append("select count(1) FROM CleaningService ");
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
				strSql.Append("order by T.CleanerId desc");
			}
			strSql.Append(")AS Row, T.*  from CleaningService T ");
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
			parameters[0].Value = "CleaningService";
			parameters[1].Value = "CleanerId";
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

