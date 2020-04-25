using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace iRan.DAL
{
	/// <summary>
	/// 数据访问类:RoomTypeInfoDAL
	/// </summary>
	public partial class RoomTypeInfoDAL
	{
		public RoomTypeInfoDAL()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("RoomType", "RoomTypeInfo"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int RoomType,int BedType)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from RoomTypeInfo");
			strSql.Append(" where RoomType=@RoomType and BedType=@BedType ");
			SqlParameter[] parameters = {
					new SqlParameter("@RoomType", SqlDbType.Int,4),
					new SqlParameter("@BedType", SqlDbType.Int,4)			};
			parameters[0].Value = RoomType;
			parameters[1].Value = BedType;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(iRan.Model.RoomTypeInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into RoomTypeInfo(");
			strSql.Append("RoomType,BedType,Syno)");
			strSql.Append(" values (");
			strSql.Append("@RoomType,@BedType,@Syno)");
			SqlParameter[] parameters = {
					new SqlParameter("@RoomType", SqlDbType.Int,4),
					new SqlParameter("@BedType", SqlDbType.Int,4),
					new SqlParameter("@Syno", SqlDbType.VarChar,512)};
			parameters[0].Value = model.RoomType;
			parameters[1].Value = model.BedType;
			parameters[2].Value = model.Syno;

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
		public bool Update(iRan.Model.RoomTypeInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update RoomTypeInfo set ");
			strSql.Append("Syno=@Syno");
			strSql.Append(" where RoomType=@RoomType and BedType=@BedType ");
			SqlParameter[] parameters = {
					new SqlParameter("@Syno", SqlDbType.VarChar,512),
					new SqlParameter("@RoomType", SqlDbType.Int,4),
					new SqlParameter("@BedType", SqlDbType.Int,4)};
			parameters[0].Value = model.Syno;
			parameters[1].Value = model.RoomType;
			parameters[2].Value = model.BedType;

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
		public bool Delete(int RoomType,int BedType)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from RoomTypeInfo ");
			strSql.Append(" where RoomType=@RoomType and BedType=@BedType ");
			SqlParameter[] parameters = {
					new SqlParameter("@RoomType", SqlDbType.Int,4),
					new SqlParameter("@BedType", SqlDbType.Int,4)			};
			parameters[0].Value = RoomType;
			parameters[1].Value = BedType;

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
		/// 得到一个对象实体
		/// </summary>
		public iRan.Model.RoomTypeInfo GetModel(int RoomType,int BedType)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 RoomType,BedType,Syno from RoomTypeInfo ");
			strSql.Append(" where RoomType=@RoomType and BedType=@BedType ");
			SqlParameter[] parameters = {
					new SqlParameter("@RoomType", SqlDbType.Int,4),
					new SqlParameter("@BedType", SqlDbType.Int,4)			};
			parameters[0].Value = RoomType;
			parameters[1].Value = BedType;

			iRan.Model.RoomTypeInfo model=new iRan.Model.RoomTypeInfo();
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
		public iRan.Model.RoomTypeInfo DataRowToModel(DataRow row)
		{
			iRan.Model.RoomTypeInfo model=new iRan.Model.RoomTypeInfo();
			if (row != null)
			{
				if(row["RoomType"]!=null && row["RoomType"].ToString()!="")
				{
					model.RoomType=int.Parse(row["RoomType"].ToString());
				}
				if(row["BedType"]!=null && row["BedType"].ToString()!="")
				{
					model.BedType=int.Parse(row["BedType"].ToString());
				}
				if(row["Syno"]!=null)
				{
					model.Syno=row["Syno"].ToString();
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
			strSql.Append("select RoomType,BedType,Syno ");
			strSql.Append(" FROM RoomTypeInfo ");
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
			strSql.Append(" RoomType,BedType,Syno ");
			strSql.Append(" FROM RoomTypeInfo ");
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
			strSql.Append("select count(1) FROM RoomTypeInfo ");
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
				strSql.Append("order by T.BedType desc");
			}
			strSql.Append(")AS Row, T.*  from RoomTypeInfo T ");
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
			parameters[0].Value = "RoomTypeInfo";
			parameters[1].Value = "BedType";
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

