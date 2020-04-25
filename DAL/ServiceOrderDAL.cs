using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace iRan.DAL
{
	/// <summary>
	/// 数据访问类:ServiceOrderDAL
	/// </summary>
	public partial class ServiceOrderDAL
	{
		public ServiceOrderDAL()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(decimal Oid)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from ServiceOrder");
			strSql.Append(" where Oid=@Oid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Oid", SqlDbType.Decimal,9)			};
			parameters[0].Value = Oid;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(iRan.Model.ServiceOrder model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into ServiceOrder(");
			strSql.Append("Oid,Uid,esOrderCreateTime,esOrderContent,esOrderTotalPrice,esOrderStatus)");
			strSql.Append(" values (");
			strSql.Append("@Oid,@Uid,@esOrderCreateTime,@esOrderContent,@esOrderTotalPrice,@esOrderStatus)");
			SqlParameter[] parameters = {
					new SqlParameter("@Oid", SqlDbType.Decimal,9),
					new SqlParameter("@Uid", SqlDbType.Int,4),
					new SqlParameter("@esOrderCreateTime", SqlDbType.DateTime),
					new SqlParameter("@esOrderContent", SqlDbType.VarChar,512),
					new SqlParameter("@esOrderTotalPrice", SqlDbType.Float,8),
					new SqlParameter("@esOrderStatus", SqlDbType.Int,4)};
			parameters[0].Value = model.Oid;
			parameters[1].Value = model.Uid;
			parameters[2].Value = model.esOrderCreateTime;
			parameters[3].Value = model.esOrderContent;
			parameters[4].Value = model.esOrderTotalPrice;
			parameters[5].Value = model.esOrderStatus;

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
		public bool Update(iRan.Model.ServiceOrder model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update ServiceOrder set ");
			strSql.Append("Uid=@Uid,");
			strSql.Append("esOrderCreateTime=@esOrderCreateTime,");
			strSql.Append("esOrderContent=@esOrderContent,");
			strSql.Append("esOrderTotalPrice=@esOrderTotalPrice,");
			strSql.Append("esOrderStatus=@esOrderStatus");
			strSql.Append(" where Oid=@Oid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Uid", SqlDbType.Int,4),
					new SqlParameter("@esOrderCreateTime", SqlDbType.DateTime),
					new SqlParameter("@esOrderContent", SqlDbType.VarChar,512),
					new SqlParameter("@esOrderTotalPrice", SqlDbType.Float,8),
					new SqlParameter("@esOrderStatus", SqlDbType.Int,4),
					new SqlParameter("@Oid", SqlDbType.Decimal,9)};
			parameters[0].Value = model.Uid;
			parameters[1].Value = model.esOrderCreateTime;
			parameters[2].Value = model.esOrderContent;
			parameters[3].Value = model.esOrderTotalPrice;
			parameters[4].Value = model.esOrderStatus;
			parameters[5].Value = model.Oid;

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
		public bool Delete(decimal Oid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ServiceOrder ");
			strSql.Append(" where Oid=@Oid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Oid", SqlDbType.Decimal,9)			};
			parameters[0].Value = Oid;

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
		public bool DeleteList(string Oidlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from ServiceOrder ");
			strSql.Append(" where Oid in ("+Oidlist + ")  ");
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
		public iRan.Model.ServiceOrder GetModel(decimal Oid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 Oid,Uid,esOrderCreateTime,esOrderContent,esOrderTotalPrice,esOrderStatus from ServiceOrder ");
			strSql.Append(" where Oid=@Oid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Oid", SqlDbType.Decimal,9)			};
			parameters[0].Value = Oid;

			iRan.Model.ServiceOrder model=new iRan.Model.ServiceOrder();
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
		public iRan.Model.ServiceOrder DataRowToModel(DataRow row)
		{
			iRan.Model.ServiceOrder model=new iRan.Model.ServiceOrder();
			if (row != null)
			{
				if(row["Oid"]!=null && row["Oid"].ToString()!="")
				{
					model.Oid=decimal.Parse(row["Oid"].ToString());
				}
				if(row["Uid"]!=null && row["Uid"].ToString()!="")
				{
					model.Uid=int.Parse(row["Uid"].ToString());
				}
				if(row["esOrderCreateTime"]!=null && row["esOrderCreateTime"].ToString()!="")
				{
					model.esOrderCreateTime=DateTime.Parse(row["esOrderCreateTime"].ToString());
				}
				if(row["esOrderContent"]!=null)
				{
					model.esOrderContent=row["esOrderContent"].ToString();
				}
				if(row["esOrderTotalPrice"]!=null && row["esOrderTotalPrice"].ToString()!="")
				{
					model.esOrderTotalPrice=decimal.Parse(row["esOrderTotalPrice"].ToString());
				}
				if(row["esOrderStatus"]!=null && row["esOrderStatus"].ToString()!="")
				{
					model.esOrderStatus=int.Parse(row["esOrderStatus"].ToString());
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
			strSql.Append("select Oid,Uid,esOrderCreateTime,esOrderContent,esOrderTotalPrice,esOrderStatus ");
			strSql.Append(" FROM ServiceOrder ");
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
			strSql.Append(" Oid,Uid,esOrderCreateTime,esOrderContent,esOrderTotalPrice,esOrderStatus ");
			strSql.Append(" FROM ServiceOrder ");
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
			strSql.Append("select count(1) FROM ServiceOrder ");
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
				strSql.Append("order by T.Oid desc");
			}
			strSql.Append(")AS Row, T.*  from ServiceOrder T ");
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
			parameters[0].Value = "ServiceOrder";
			parameters[1].Value = "Oid";
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

