using Plots
using CSV

function plot_performance(shocks,utilities)
    df = CSV.read("solver/test_data/time@$shocks,$utilities.csv")
    x = df[!,:types]
    y = df[!,:time]
    plot(x,y,title="Time to Solve Over Number of Types")
    xlabel!("Number of Types")
    ylabel!("Seconds")
    savefig("solver/test_data/time_vs_complexity@$shocks,$utilities.png")
end

plot_performance(3,10)