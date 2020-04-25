using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace iRan.DAL
{
	/// <summary>
	/// 数据访问类:CheckInDAL
	/// </summary>
	public partial class CheckInDAL
	{
		public CheckInDAL()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("Gid", "CheckIn"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int Gid,long Cid)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from CheckIn");
			strSql.Append(" where Gid=@Gid and Cid=@Cid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Gid", SqlDbType.Int,4),
					new SqlParameter("@Cid", SqlDbType.BigInt,8)			};
			parameters[0].Value = Gid;
			parameters[1].Value = Cid;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public long Add(iRan.Model.CheckIn model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into CheckIn(");
			strSql.Append("Oid,Gid,Uid,CheckinTime,CheckinDays,cTotalPrice,CheckinStatus)");
			strSql.Append(" values (");
			strSql.Append("@Oid,@Gid,@Uid,@CheckinTime,@CheckinDays,@cTotalPrice,@CheckinStatus)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@Oid", SqlDbType.Decimal,9),
					new SqlParameter("@Gid", SqlDbType.Int,4),
					new SqlParameter("@Uid", SqlDbType.Int,4),
					new SqlParameter("@CheckinTime", SqlDbType.DateTime),
					new SqlParameter("@CheckinDays", SqlDbType.Int,4),
					new SqlParameter("@cTotalPrice", SqlDbType.Float,8),
					new SqlParameter("@CheckinStatus", SqlDbType.Int,4)};
			parameters[0].Value = model.Oid;
			parameters[1].Value = model.Gid;
			parameters[2].Value = model.Uid;
			parameters[3].Value = model.CheckinTime;
			parameters[4].Value = model.CheckinDays;
			parameters[5].Value = model.cTotalPrice;
			parameters[6].Value = model.CheckinStatus;

			object obj = DbHelperSQL.GetSingle(strSql.ToString(),parameters);
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt64(obj);
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(iRan.Model.CheckIn model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update CheckIn set ");
			strSql.Append("Oid=@Oid,");
			strSql.Append("Uid=@Uid,");
			strSql.Append("CheckinTime=@CheckinTime,");
			strSql.Append("CheckinDays=@CheckinDays,");
			strSql.Append("cTotalPrice=@cTotalPrice,");
			strSql.Append("CheckinStatus=@CheckinStatus");
			strSql.Append(" where Cid=@Cid");
			SqlParameter[] parameters = {
					new SqlParameter("@Oid", SqlDbType.Decimal,9),
					new SqlParameter("@Uid", SqlDbType.Int,4),
					new SqlParameter("@CheckinTime", SqlDbType.DateTime),
					new SqlParameter("@CheckinDays", SqlDbType.Int,4),
					new SqlParameter("@cTotalPrice", SqlDbType.Float,8),
					new SqlParameter("@CheckinStatus", SqlDbType.Int,4),
					new SqlParameter("@Cid", SqlDbType.BigInt,8),
					new SqlParameter("@Gid", SqlDbType.Int,4)};
			parameters[0].Value = model.Oid;
			parameters[1].Value = model.Uid;
			parameters[2].Value = model.CheckinTime;
			parameters[3].Value = model.CheckinDays;
			parameters[4].Value = model.cTotalPrice;
			parameters[5].Value = model.CheckinStatus;
			parameters[6].Value = model.Cid;
			parameters[7].Value = model.Gid;

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
		public bool Delete(long Cid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from CheckIn ");
			strSql.Append(" where Cid=@Cid");
			SqlParameter[] parameters = {
					new SqlParameter("@Cid", SqlDbType.BigInt)
			};
			parameters[0].Value = Cid;

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
		public bool Delete(int Gid,long Cid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from CheckIn ");
			strSql.Append(" where Gid=@Gid and Cid=@Cid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Gid", SqlDbType.Int,4),
					new SqlParameter("@Cid", SqlDbType.BigInt,8)			};
			parameters[0].Value = Gid;
			parameters[1].Value = Cid;

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
		public bool DeleteList(string Cidlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from CheckIn ");
			strSql.Append(" where Cid in ("+Cidlist + ")  ");
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
		public iRan.Model.CheckIn GetModel(long Cid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 Cid,Oid,Gid,Uid,CheckinTime,CheckinDays,cTotalPrice,CheckinStatus from CheckIn ");
			strSql.Append(" where Cid=@Cid");
			SqlParameter[] parameters = {
					new SqlParameter("@Cid", SqlDbType.BigInt)
			};
			parameters[0].Value = Cid;

			iRan.Model.CheckIn model=new iRan.Model.CheckIn();
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
		public iRan.Model.CheckIn DataRowToModel(DataRow row)
		{
			iRan.Model.CheckIn model=new iRan.Model.CheckIn();
			if (row != null)
			{
				if(row["Cid"]!=null && row["Cid"].ToString()!="")
				{
					model.Cid=long.Parse(row["Cid"].ToString());
				}
				if(row["Oid"]!=null && row["Oid"].ToString()!="")
				{
					model.Oid=decimal.Parse(row["Oid"].ToString());
				}
				if(row["Gid"]!=null && row["Gid"].ToString()!="")
				{
					model.Gid=int.Parse(row["Gid"].ToString());
				}
				if(row["Uid"]!=null && row["Uid"].ToString()!="")
				{
					model.Uid=int.Parse(row["Uid"].ToString());
				}
				if(row["CheckinTime"]!=null && row["CheckinTime"].ToString()!="")
				{
					model.CheckinTime=DateTime.Parse(row["CheckinTime"].ToString());
				}
				if(row["CheckinDays"]!=null && row["CheckinDays"].ToString()!="")
				{
					model.CheckinDays=int.Parse(row["CheckinDays"].ToString());
				}
				if(row["cTotalPrice"]!=null && row["cTotalPrice"].ToString()!="")
				{
					model.cTotalPrice=decimal.Parse(row["cTotalPrice"].ToString());
				}
				if(row["CheckinStatus"]!=null && row["CheckinStatus"].ToString()!="")
				{
					model.CheckinStatus=int.Parse(row["CheckinStatus"].ToString());
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
			strSql.Append("select Cid,Oid,Gid,Uid,CheckinTime,CheckinDays,cTotalPrice,CheckinStatus ");
			strSql.Append(" FROM CheckIn ");
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
			strSql.Append(" Cid,Oid,Gid,Uid,CheckinTime,CheckinDays,cTotalPrice,CheckinStatus ");
			strSql.Append(" FROM CheckIn ");
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
			strSql.Append("select count(1) FROM CheckIn ");
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
				strSql.Append("order by T.Cid desc");
			}
			strSql.Append(")AS Row, T.*  from CheckIn T ");
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
			parameters[0].Value = "CheckIn";
			parameters[1].Value = "Cid";
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

