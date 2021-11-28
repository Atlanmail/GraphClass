local ReplicatedStorage = game:GetService("ReplicatedStorage")
local graphClass = require(ReplicatedStorage.Common.graphClass)

local idTable = {

    ["0f"] = {
        value = "Clock",
        edge = {"df", "bf"},
    },

    ["bf"] = {
        value = "Josh",
        edge = {"df", "0f"}
    },

    ["cf"] = {
        value = "Sperg",
        edge = {}
    },

    ["df"] = {
        value = "heck",
        edge = {"bf", "0f"}
    }

}

local subGraph = {"0f", "df", "cf", "ga"}

local tree = graphClass.new(idTable)

local subtree = tree:subGraph(subGraph)
--[[print(tree.graph)
print (subtree.graph)
]]

tree:addEdge("cf", "bf")
print(tree:isConnected())
tree:removeEdge("cf", "bf")
print(tree:isConnected())

--print(tree:validatePath("bfcdbfcd"))
--print(tree:validatePath("0f0f0f"))
