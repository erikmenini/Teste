Feature: Testing an API


        Scenario 1: Get list of all posts
          Given i go to the API
          When i access the API
          Then return list

        Scenario 2: Search the details of each post
          Given i go to the API
          When i inform the ID post
          And search the post
          Then return the details

        Scenario 3: Search an absent post
          Given i go to the API
          When i search for an absent ID post
          And search for the absent post
          Then return error 404

        Scenario 4: Create a new post
          Given i go to the API
          When i fill the title, body and user ID
          And create a new post
          Then create the post

        Scenario 5: Delete the post through ID
          Given i go to the API
          When the ID is informed
          And  delete the post
          Then delete post

        Scenario 6: Delete an inexistent post
          Given i go to the API
          When the inexistent ID is informed
          And delete the post
          Then inform error 404

        Scenario 7: Changing a post
          Given i go to the API
          When the title of an existent post is informed
          And change the post
          Then change the post
