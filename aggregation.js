use PresidentialCampaigns

db.donations.aggregate([{
        $match: {
            amount: {
                $gt: 500
            }
        }
    },
    {
        $group: {
            _id: "$contributor_state",
            count: {
                $sum: 1
            },
            total_donations: {
                $sum: "$amount"
            }
        }
    },
    {
        $project: {
            State: "$_id",
            Count: "$count",
            Total_Donations: "$total_donations"
        }
    },
    {
        $sort: {
            Count: 1
        }
    }
])

db.donations.aggregate(
[{
    $match: /** * query - The query in MQL. */ {
        contributor_state: "TX"
    }
}, {
    $group: /** * _id - The id of the group. * field1 - The first field name. */ {
        _id: "$contributor_city",
        total_amount: {
            "$sum": "$amount"
        },
        total_count: {
            "$sum": 1
        },
        avg_amt: {
            "$avg": "$amount"
        }
    }
    
}])