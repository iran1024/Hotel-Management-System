using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace iRan.DAL
{
	/// <summary>
	/// 数据访问类:GuestRoomInfoDAL
	/// </summary>
	public partial class GuestRoomInfoDAL
	{
		public GuestRoomInfoDAL()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("Gid", "GuestRoomInfo"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int Gid,int RoomType,int BedType)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from GuestRoomInfo");
			strSql.Append(" where Gid=@Gid and RoomType=@RoomType and BedType=@BedType ");
			SqlParameter[] parameters = {
					new SqlParameter("@Gid", SqlDbType.Int,4),
					new SqlParameter("@RoomType", SqlDbType.Int,4),
					new SqlParameter("@BedType", SqlDbType.Int,4)			};
			parameters[0].Value = Gid;
			parameters[1].Value = RoomType;
			parameters[2].Value = BedType;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(iRan.Model.GuestRoomInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into GuestRoomInfo(");
			strSql.Append("Gid,RoomType,BedType,Area,FloorDistribution,TolerableNumber,HasWlan,RoomPrice,GStatus)");
			strSql.Append(" values (");
			strSql.Append("@Gid,@RoomType,@BedType,@Area,@FloorDistribution,@TolerableNumber,@HasWlan,@RoomPrice,@GStatus)");
			SqlParameter[] parameters = {
					new SqlParameter("@Gid", SqlDbType.Int,4),
					new SqlParameter("@RoomType", SqlDbType.Int,4),
					new SqlParameter("@BedType", SqlDbType.Int,4),
					new SqlParameter("@Area", SqlDbType.Int,4),
					new SqlParameter("@FloorDistribution", SqlDbType.Int,4),
					new SqlParameter("@TolerableNumber", SqlDbType.Int,4),
					new SqlParameter("@HasWlan", SqlDbType.Int,4),
					new SqlParameter("@RoomPrice", SqlDbType.Float,8),
					new SqlParameter("@GStatus", SqlDbType.Int,4)};
			parameters[0].Value = model.Gid;
			parameters[1].Value = model.RoomType;
			parameters[2].Value = model.BedType;
			parameters[3].Value = model.Area;
			parameters[4].Value = model.FloorDistribution;
			parameters[5].Value = model.TolerableNumber;
			parameters[6].Value = model.HasWlan;
			parameters[7].Value = model.RoomPrice;
			parameters[8].Value = model.GStatus;

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
		public bool Update(iRan.Model.GuestRoomInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update GuestRoomInfo set ");
			strSql.Append("Area=@Area,");
			strSql.Append("FloorDistribution=@FloorDistribution,");
			strSql.Append("TolerableNumber=@TolerableNumber,");
			strSql.Append("RoomType=@RoomType,");
			strSql.Append("BedType=@BedType,");
			strSql.Append("HasWlan=@HasWlan,");
			strSql.Append("RoomPrice=@RoomPrice,");
			strSql.Append("GStatus=@GStatus");
			strSql.Append(" where Gid=@Gid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Area", SqlDbType.Int,4),
					new SqlParameter("@FloorDistribution", SqlDbType.Int,4),
					new SqlParameter("@TolerableNumber", SqlDbType.Int,4),
					new SqlParameter("@RoomType", SqlDbType.Int,4),
					new SqlParameter("@BedType", SqlDbType.Int,4),
					new SqlParameter("@HasWlan", SqlDbType.Int,4),
					new SqlParameter("@RoomPrice", SqlDbType.Float,8),
					new SqlParameter("@GStatus", SqlDbType.Int,4),
					new SqlParameter("@Gid", SqlDbType.Int,4)};
			parameters[0].Value = model.Area;
			parameters[1].Value = model.FloorDistribution;
			parameters[2].Value = model.TolerableNumber;
			parameters[3].Value = model.RoomType;
			parameters[4].Value = model.BedType;
			parameters[5].Value = model.HasWlan;
			parameters[6].Value = model.RoomPrice;
			parameters[7].Value = model.GStatus;
			parameters[8].Value = model.Gid;

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
		public bool Delete(int Gid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from GuestRoomInfo ");
			strSql.Append(" where Gid=@Gid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Gid", SqlDbType.Int,4)
			};
			parameters[0].Value = Gid;

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
		public iRan.Model.GuestRoomInfo GetModel(int Gid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 Gid,RoomType,BedType,Area,FloorDistribution,TolerableNumber,HasWlan,RoomPrice,GStatus from GuestRoomInfo ");
			strSql.Append(" where Gid=@Gid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Gid", SqlDbType.Int,4)
					};
			parameters[0].Value = Gid;


			iRan.Model.GuestRoomInfo model=new iRan.Model.GuestRoomInfo();
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
		public iRan.Model.GuestRoomInfo DataRowToModel(DataRow row)
		{
			iRan.Model.GuestRoomInfo model=new iRan.Model.GuestRoomInfo();
			if (row != null)
			{
				if(row["Gid"]!=null && row["Gid"].ToString()!="")
				{
					model.Gid=int.Parse(row["Gid"].ToString());
				}
				if(row["RoomType"]!=null && row["RoomType"].ToString()!="")
				{
					model.RoomType=int.Parse(row["RoomType"].ToString());
				}
				if(row["BedType"]!=null && row["BedType"].ToString()!="")
				{
					model.BedType=int.Parse(row["BedType"].ToString());
				}
				if(row["Area"]!=null && row["Area"].ToString()!="")
				{
					model.Area=int.Parse(row["Area"].ToString());
				}
				if(row["FloorDistribution"]!=null && row["FloorDistribution"].ToString()!="")
				{
					model.FloorDistribution=int.Parse(row["FloorDistribution"].ToString());
				}
				if(row["TolerableNumber"]!=null && row["TolerableNumber"].ToString()!="")
				{
					model.TolerableNumber=int.Parse(row["TolerableNumber"].ToString());
				}
				if(row["HasWlan"]!=null && row["HasWlan"].ToString()!="")
				{
					model.HasWlan=int.Parse(row["HasWlan"].ToString());
				}
				if(row["RoomPrice"]!=null && row["RoomPrice"].ToString()!="")
				{
					model.RoomPrice=decimal.Parse(row["RoomPrice"].ToString());
				}
				if(row["GStatus"]!=null && row["GStatus"].ToString()!="")
				{
					model.GStatus=int.Parse(row["GStatus"].ToString());
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
			strSql.Append("select Gid,RoomType,BedType,Area,FloorDistribution,TolerableNumber,HasWlan,RoomPrice,GStatus ");
			strSql.Append(" FROM GuestRoomInfo ");
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
			strSql.Append(" Gid,RoomType,BedType,Area,FloorDistribution,TolerableNumber,HasWlan,RoomPrice,GStatus ");
			strSql.Append(" FROM GuestRoomInfo ");
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
			strSql.Append("select count(1) FROM GuestRoomInfo ");
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
			strSql.Append(")AS Row, T.*  from GuestRoomInfo T ");
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
			parameters[0].Value = "GuestRoomInfo";
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

