using System;
using System.Data;
using System.Collections.Generic;
using Maticsoft.Common;
using iRan.Model;
namespace iRan.BLL
{
	/// <summary>
	/// GuestRoomInfoBLL
	/// </summary>
	public partial class GuestRoomInfoBLL
	{
		private readonly iRan.DAL.GuestRoomInfoDAL dal=new iRan.DAL.GuestRoomInfoDAL();
		public GuestRoomInfoBLL()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
			return dal.GetMaxId();
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int Gid,int RoomType,int BedType)
		{
			return dal.Exists(Gid,RoomType,BedType);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(iRan.Model.GuestRoomInfo model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(iRan.Model.GuestRoomInfo model)
		{
			return dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int Gid)
		{
			
			return dal.Delete(Gid);
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public iRan.Model.GuestRoomInfo GetModel(int Gid)
		{
			
			return dal.GetModel(Gid);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中
		/// </summary>
		public iRan.Model.GuestRoomInfo GetModelByCache(int Gid,int RoomType,int BedType)
		{
			
			string CacheKey = "GuestRoomInfoModel-" + Gid+RoomType+BedType;
			object objModel = Maticsoft.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(Gid);
					if (objModel != null)
					{
						int ModelCache = Maticsoft.Common.ConfigHelper.GetConfigInt("ModelCache");
						Maticsoft.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (iRan.Model.GuestRoomInfo)objModel;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}
		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			return dal.GetList(Top,strWhere,filedOrder);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<iRan.Model.GuestRoomInfo> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<iRan.Model.GuestRoomInfo> DataTableToList(DataTable dt)
		{
			List<iRan.Model.GuestRoomInfo> modelList = new List<iRan.Model.GuestRoomInfo>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				iRan.Model.GuestRoomInfo model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = dal.DataRowToModel(dt.Rows[n]);
					if (model != null)
					{
						modelList.Add(model);
					}
				}
			}
			return modelList;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			return dal.GetRecordCount(strWhere);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			return dal.GetListByPage( strWhere,  orderby,  startIndex,  endIndex);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
			//return dal.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

