================================================================================
            LUMINA DIGITAL ASSETS | GITHUB PAGES DEPLOYMENT REFERENCE
================================================================================

1.  TASK        : To initialize a project for web deployment
    Command     : Prepare static architecture
    Syntax      : Ensure index.html exists in the root directory
    Explanation : This command establishes the foundational entry point for 
                  the GitHub Pages deployment engine.

2.  TASK        : To create a dedicated branch for deployment
    Command     : gh-pages
    Syntax      : git checkout -b gh-pages
    Explanation : This command creates a sub-branch specially for hosting 
                  the production-ready static assets.

3.  TASK        : To push the deployment-ready assets to the cloud
    Command     : git push
    Syntax      : git push origin gh-pages
    Explanation : This command dispatches your static web files to the 
                  GitHub-hosted global distribution network (CDN).

4.  TASK        : To activate the deployment engine
    Command     : Settings -> Pages (GitHub UI)
    Syntax      : Select 'gh-pages' or 'main' as source
    Explanation : This command authorizes the GitHub hosting server to 
                  automatically generate a secure (HTTPS) public URL.

5.  TASK        : To verify the production deployment status
    Command     : GitHub Actions Audit
    Syntax      : View the 'Actions' tab on the repository
    Explanation : This command allows the operator to monitor the progress of 
                  the automated build and deployment runner.

6.  TASK        : To configure a custom domain for the platform
    Command     : Custom Domain
    Syntax      : Settings -> Pages -> Custom domain -> www.yourdomain.com
    Explanation : This command allows you to replace the 'github.io' URL 
                  with your own premium branded domain identifier.

7.  TASK        : To enforce secure HTTPS protocols
    Command     : Enforce HTTPS
    Syntax      : Settings -> Pages -> Enable 'Enforce HTTPS'
    Explanation : This command ensures all worldwide traffic to your static 
                  platform is encrypted for security.

================================================================================
                END OF GITHUB PAGES DEPLOYMENT MASTER GUIDE
================================================================================
