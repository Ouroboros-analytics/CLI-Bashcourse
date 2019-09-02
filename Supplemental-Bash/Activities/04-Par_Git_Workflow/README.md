# Team Branching

## Requirements

One of you will need to fork the [sample repository](https://github.com/TAToolbox/Student-Study).

![Fork](/Supplemental-Bash/Images/fork.png)

Then you'll add your partner as a collaborator to the forked repo.

![Collaborators](/Supplemental-Bash/Images/collaborators.png)
![Add-Collab](/Supplemental-Bash/Images/add_collab.png)

## Instructions

**Communicating only through Slack** create a branch for yourself and work with your partner to make the following changes to the sample repo:

Student 1:

1. Create a new Title for `index.html`
2. In `app.py` make the following changes:
   - Inside the flask route `"/"` change the plot to a bar chart
   - Inside the flask route `"/API/students"` sort the df results by grade with `df.sort_values(by=['grade'])`

Student 2:

1. Change the header for `index.html` to an `<h1>` and center it with the class `text-center`.
2. In `app.py` make the following changes:
   - Inside the flask route `"/"` remove the index by changing `df.to_html()` to `df.to_html(index=False)`
   - Inside the flask route `"/API/students"` jsonify df by changing `return str(students_dict)` to `return jsonify(students_dict)`

When you've finished, commit and add your changes and push **your branch only** to the remote. When you've both finished, pull down the changes and merge _your partner's branch_ to the master and push back to the remote.
