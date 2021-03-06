package router

import (
	"covi-b/handler"
	"github.com/labstack/echo"
)

type API struct {
	Echo *echo.Echo
	UserHandler handler.UserHandler
	StoreHandler handler.StoreHandler
	UserStoreHandler handler.UserStoreHandler
	CityHandler handler.CityHandler
	NotifyHandler handler.NotifyHandler
}

func (api *API) SetupRouter() {
	//user
	api.Echo.POST("/user/sign-in", api.UserHandler.HandleSignIn)
	api.Echo.POST("/user/sign-up", api.UserHandler.HandleSignUp)
	api.Echo.POST("/user/update", api.UserHandler.HandleUpdate)
	api.Echo.POST("/user/markInfected", api.UserHandler.HandleMarkInfected)
	api.Echo.POST("/user/unmarkInfected", api.UserHandler.HandleUnMarkInfected)
	api.Echo.POST("/user/unmarkInfected", api.UserHandler.HandleUnMarkInfected)
	api.Echo.GET("/user/getInfected", api.UserHandler.HandleGetInfected)
	api.Echo.GET("/user/getRiskEvent", api.UserHandler.HandleGetRiskEvent)

	//store
	api.Echo.GET("/store/get", api.StoreHandler.HandleGetStore)
	api.Echo.POST("/store/create", api.StoreHandler.HandleCreate)

	//userstore
	api.Echo.POST("/userstore/create", api.UserStoreHandler.HandleCreate)

	//city
	api.Echo.GET("/city/getAll", api.CityHandler.HandleGetAll)

	//notify
	api.Echo.GET("/notify/getByUserid", api.NotifyHandler.HandleGetNotify)
}