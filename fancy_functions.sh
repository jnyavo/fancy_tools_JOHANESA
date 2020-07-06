function gco()
{
        if [[ -e .git ]]
        then
                echo "vous êtes sur la branche $(git status)"
                git commit -m $* []
        else
                echo "vous n'êtes pas dans un projet git"
        fi
}
