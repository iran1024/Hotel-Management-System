using System;
using System.Data;
using System.Collections.Generic;
using Maticsoft.Common;
using iRan.Model;
namespace iRan.BLL
{
	/// <summary>
	/// CheckInBLL
	/// </summary>
	public partial class CheckInBLL
	{
		private readonly iRan.DAL.CheckInDAL dal=new iRan.DAL.CheckInDAL();
		public CheckInBLL()
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
		public bool Exists(int Gid,long Cid)
		{
			return dal.Exists(Gid,Cid);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public long Add(iRan.Model.CheckIn model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(iRan.Model.CheckIn model)
		{
			return dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(long Cid)
		{
			
			return dal.Delete(Cid);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int Gid,long Cid)
		{
			
			return dal.Delete(Gid,Cid);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool DeleteList(string Cidlist )
		{
			return dal.DeleteList(Maticsoft.Common.PageValidate.SafeLongFilter(Cidlist,0) );
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public iRan.Model.CheckIn GetModel(long Cid)
		{
			
			return dal.GetModel(Cid);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中
		/// </summary>
		public iRan.Model.CheckIn GetModelByCache(long Cid)
		{
			
			string CacheKey = "CheckInModel-" + Cid;
			object objModel = Maticsoft.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(Cid);
					if (objModel != null)
					{
						int ModelCache = Maticsoft.Common.ConfigHelper.GetConfigInt("ModelCache");
						Maticsoft.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (iRan.Model.CheckIn)objModel;
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
		public List<iRan.Model.CheckIn> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<iRan.Model.CheckIn> DataTableToList(DataTable dt)
		{
			List<iRan.Model.CheckIn> modelList = new List<iRan.Model.CheckIn>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				iRan.Model.CheckIn model;
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

