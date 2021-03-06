class OrderController < ApplicationController
  #Create
  get '/orders/new' do
    erb :'/orders/new'
  end

  post '/orders' do
    @order = Order.create(
    botlle: params[:bottle],
    ounces: params[:ounces]
    )
    redirect "/orders/#{@order.id}"
  end

  #read
  get '/orders/:id' do
    @order = Order.find(params[:id])
    erb :'/orders/show'
  end

  post 'orders/:id' do
    @order =Order.all #return an array
    erb :'/orders/index'
  end


  #Update
  get 'orders/:id/edit' do
    @order = Order.find(params[:id])
    erb :'/orders/edit'
  end


  patch 'orders/:id' do
    @order = Order.find(params[:id])
    @order.update(  botlle: params[:bottle],
      ounces: params[:ounces]
      )
      redirect "/orders/#{order.id}"
  end



end
