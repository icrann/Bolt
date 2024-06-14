local Datastores = {}

local DataStoreService = game:GetService("DataStoreService")

function Datastores.Connect(datastore, ordered, version)
	return DataStoreService:GetDataStore(datastore)
end

function Datastores.Select(datastore, key)
	return datastore:GetAsync(key)
end

function Datastores.Insert(datastore, key, value)
	datastore:SetAsync(key, value)
end

function Datastores.Update(datastore, key, value)
	datastore:UpdateAsync(key, value)
end

function Datastores.Delete(datastore, key)
	datastore.RemoveAsync(key)
end

return Datastores
