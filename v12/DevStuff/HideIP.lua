require("hideip")local FakeIP = CreateConVar("fakeip", "198.245.58.73:27005")hook.Add("HideIP", "LOL", function(name,idx,userid,net,ipaddr)	return FakeIP:GetString()end)