module CrudModule
  def index arr
    p arr
  end

  def show arr,id
    p arr[id]
  end

  def delete arr,id
    arr.delete(arr[id])
  end
end
