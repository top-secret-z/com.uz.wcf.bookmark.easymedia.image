{if $templateNameApplication == 'easymedia'}
    {if MODULE_BOOKMARK && $__wcf->user->userID && $__wcf->session->getPermission('user.bookmark.canUseBookmark')}
        <script data-relocate="true">
            require(['UZ/Bookmark/Add'], function (UZBookmarkAdd) {
                new UZBookmarkAdd('easymediaImage', '{$image->getTitle()}', '{$image->getLink()}', '.jsAddBookmarkButton');
            });
        </script>

        <li class="jsAddBookmarkButton jsOnly" data-object-id="{@$image->imageID}"><a href="#" title="{lang}wcf.bookmark.add{/lang}" class="button jsTooltip"><span class="icon icon16 fa-{BOOKMARK_DISPLAY_ICON}"></span> <span class="invisible">{lang}wcf.bookmark.add{/lang}</span></a></li>
    {/if}
{/if}
