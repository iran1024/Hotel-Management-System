using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace iRan.DAL
{
	/// <summary>
	/// 数据访问类:ExServiceDAL
	/// </summary>
	public partial class ExServiceDAL
	{
		public ExServiceDAL()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("GoodsID", "ExService"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int GoodsID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ExService");
			strSql.Append(" where GoodsID=@GoodsID");
			SqlParameter[] parameters = {
					new SqlParameter("@GoodsID", SqlDbType.Int,4)
			};
			parameters[0].Value = GoodsID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(iRan.Model.ExService model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ExService(");
			strSql.Append("GoodsName,GoodsPrice,GoodsStock,GoodsStatus)");
			strSql.Append(" values (");
			strSql.Append("@GoodsName,@GoodsPrice,@GoodsStock,@GoodsStatus)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@GoodsName", SqlDbType.VarChar,16),
					new SqlParameter("@GoodsPrice", SqlDbType.Float,8),
					new SqlParameter("@GoodsStock", SqlDbType.Int,4),
					new SqlParameter("@GoodsStatus", SqlDbType.Int,4)};
			parameters[0].Value = model.GoodsName;
			parameters[1].Value = model.GoodsPrice;
			parameters[2].Value = model.GoodsStock;
			parameters[3].Value = model.GoodsStatus;

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
		public bool Update(iRan.Model.ExService model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ExService set ");
			strSql.Append("GoodsName=@GoodsName,");
			strSql.Append("GoodsPrice=@GoodsPrice,");
			strSql.Append("GoodsStock=@GoodsStock,");
			strSql.Append("GoodsStatus=@GoodsStatus");
			strSql.Append(" where GoodsID=@GoodsID");
			SqlParameter[] parameters = {
					new SqlParameter("@GoodsName", SqlDbType.VarChar,16),
					new SqlParameter("@GoodsPrice", SqlDbType.Float,8),
					new SqlParameter("@GoodsStock", SqlDbType.Int,4),
					new SqlParameter("@GoodsStatus", SqlDbType.Int,4),
					new SqlParameter("@GoodsID", SqlDbType.Int,4)};
			parameters[0].Value = model.GoodsName;
			parameters[1].Value = model.GoodsPrice;
			parameters[2].Value = model.GoodsStock;
			parameters[3].Value = model.GoodsStatus;
			parameters[4].Value = model.GoodsID;

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
		public bool Delete(int GoodsID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ExService ");
			strSql.Append(" where GoodsID=@GoodsID");
			SqlParameter[] parameters = {
					new SqlParameter("@GoodsID", SqlDbType.Int,4)
			};
			parameters[0].Value = GoodsID;

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
		public bool DeleteList(string GoodsIDlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ExService ");
			strSql.Append(" where GoodsID in ("+GoodsIDlist + ")  ");
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
		public iRan.Model.ExService GetModel(int GoodsID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 GoodsID,GoodsName,GoodsPrice,GoodsStock,GoodsStatus from ExService ");
			strSql.Append(" where GoodsID=@GoodsID");
			SqlParameter[] parameters = {
					new SqlParameter("@GoodsID", SqlDbType.Int,4)
			};
			parameters[0].Value = GoodsID;

			iRan.Model.ExService model=new iRan.Model.ExService();
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
		public iRan.Model.ExService DataRowToModel(DataRow row)
		{
			iRan.Model.ExService model=new iRan.Model.ExService();
			if (row != null)
			{
				if(row["GoodsID"]!=null && row["GoodsID"].ToString()!="")
				{
					model.GoodsID=int.Parse(row["GoodsID"].ToString());
				}
				if(row["GoodsName"]!=null)
				{
					model.GoodsName=row["GoodsName"].ToString();
				}
				if(row["GoodsPrice"]!=null && row["GoodsPrice"].ToString()!="")
				{
					model.GoodsPrice=decimal.Parse(row["GoodsPrice"].ToString());
				}
				if(row["GoodsStock"]!=null && row["GoodsStock"].ToString()!="")
				{
					model.GoodsStock=int.Parse(row["GoodsStock"].ToString());
				}
				if(row["GoodsStatus"]!=null && row["GoodsStatus"].ToString()!="")
				{
					model.GoodsStatus=int.Parse(row["GoodsStatus"].ToString());
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
			strSql.Append("select GoodsID,GoodsName,GoodsPrice,GoodsStock,GoodsStatus ");
			strSql.Append(" FROM ExService ");
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
			strSql.Append(" GoodsID,GoodsName,GoodsPrice,GoodsStock,GoodsStatus ");
			strSql.Append(" FROM ExService ");
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
			strSql.Append("select count(1) FROM ExService ");
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
				strSql.Append("order by T.GoodsID desc");
			}
			strSql.Append(")AS Row, T.*  from ExService T ");
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
			parameters[0].Value = "ExService";
			parameters[1].Value = "GoodsID";
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

