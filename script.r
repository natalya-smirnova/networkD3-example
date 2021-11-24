# source('./r_files/flatten_HTML.r')

# ############### Library Declarations ###############
# libraryRequireInstall("ggplot2");
# libraryRequireInstall("plotly")
# ####################################################

# ################### Actual code ####################
# g = qplot(`Petal.Length`, data = iris, fill = `Species`, main = Sys.time());
# ####################################################

# ############# Create and save widget ###############
# p = ggplotly(g);
# internalSaveWidget(p, 'out.html');
# ####################################################

# ################ Reduce paddings ###################
# ReadFullFileReplaceString('out.html', 'out.html', ',"padding":[0-9]*,', ',"padding":0,')
# ####################################################

library(networkD3)

source('./r_files/flatten_HTML.r')

data(MisLinks, MisNodes)

p =
forceNetwork(Links = MisLinks, Nodes = MisNodes, Source = "source",
             Target = "target", Value = "value", NodeID = "name",
             Group = "group", opacity = 0.4)

internalSaveWidget(p, 'out.html');
