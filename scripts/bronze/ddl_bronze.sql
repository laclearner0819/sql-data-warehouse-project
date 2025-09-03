/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables
    if they already exist.
    Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

USE [DataWarehouse]
GO

--IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
--	DROP TABLE bronze.crm_cust_info;

/****** Object:  Table [bronze].[erp_px_cat_g1v2]    Script Date: 9/2/2025 3:25:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bronze].[erp_px_cat_g1v2]') AND type in (N'U'))
DROP TABLE [bronze].[erp_px_cat_g1v2]
GO

/****** Object:  Table [bronze].[erp_loc_a101]    Script Date: 9/2/2025 3:25:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bronze].[erp_loc_a101]') AND type in (N'U'))
DROP TABLE [bronze].[erp_loc_a101]
GO

/****** Object:  Table [bronze].[erp_cust_az12]    Script Date: 9/2/2025 3:25:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bronze].[erp_cust_az12]') AND type in (N'U'))
DROP TABLE [bronze].[erp_cust_az12]
GO

/****** Object:  Table [bronze].[crm_sales_details]    Script Date: 9/2/2025 3:25:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bronze].[crm_sales_details]') AND type in (N'U'))
DROP TABLE [bronze].[crm_sales_details]
GO

/****** Object:  Table [bronze].[crm_prd_info]    Script Date: 9/2/2025 3:25:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bronze].[crm_prd_info]') AND type in (N'U'))
DROP TABLE [bronze].[crm_prd_info]
GO

/****** Object:  Table [bronze].[crm_cust_info]    Script Date: 9/2/2025 3:25:17 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[bronze].[crm_cust_info]') AND type in (N'U'))
DROP TABLE [bronze].[crm_cust_info]
GO

/****** Object:  Table [bronze].[crm_cust_info]    Script Date: 9/2/2025 3:25:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [bronze].[crm_cust_info](
	[cst_id] [int] NULL,
	[cst_key] [nvarchar](50) NULL,
	[cst_firstname] [nvarchar](50) NULL,
	[cst_lastname] [nvarchar](50) NULL,
	[cst_material_status] [nvarchar](50) NULL,
	[cst_gndr] [nvarchar](50) NULL,
	[cst_create_date] [date] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [bronze].[crm_prd_info]    Script Date: 9/2/2025 3:25:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [bronze].[crm_prd_info](
	[prd_id] [int] NULL,
	[prd_key] [nvarchar](50) NULL,
	[prd_nm] [nvarchar](50) NULL,
	[prd_cost] [int] NULL,
	[prd_line] [nvarchar](50) NULL,
	[prd_start_dt] [datetime] NULL,
	[prd_end_dt] [datetime] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [bronze].[crm_sales_details]    Script Date: 9/2/2025 3:25:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [bronze].[crm_sales_details](
	[sls_ord_num] [nvarchar](50) NULL,
	[sls_prd_key] [nvarchar](50) NULL,
	[sls_cust_id] [int] NULL,
	[sls_order_dt] [int] NULL,
	[sls_ship_dt] [int] NULL,
	[sls_due_dt] [int] NULL,
	[sls_sales] [int] NULL,
	[sls_quantity] [int] NULL,
	[sls_price] [int] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [bronze].[erp_cust_az12]    Script Date: 9/2/2025 3:25:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [bronze].[erp_cust_az12](
	[CID] [nvarchar](50) NULL,
	[BDATE] [date] NULL,
	[GEN] [nvarchar](50) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [bronze].[erp_loc_a101]    Script Date: 9/2/2025 3:25:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [bronze].[erp_loc_a101](
	[CID] [nvarchar](50) NULL,
	[CNTRY] [nvarchar](50) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [bronze].[erp_px_cat_g1v2]    Script Date: 9/2/2025 3:25:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [bronze].[erp_px_cat_g1v2](
	[ID] [nvarchar](50) NULL,
	[CAT] [nvarchar](50) NULL,
	[SUBCAT] [nvarchar](50) NULL,
	[MAINTENANCE] [nvarchar](50) NULL
) ON [PRIMARY]
GO

