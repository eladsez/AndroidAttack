.class public Lnet/sharpspot/dinnerin/Adapters/RecipePagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "RecipePagerAdapter.java"

# interfaces
.implements Lcom/viewpagerindicator/TitleProvider;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    new-instance v0, Lnet/sharpspot/dinnerin/Fragments/RecipeDetailsFragment;

    invoke-direct {v0}, Lnet/sharpspot/dinnerin/Fragments/RecipeDetailsFragment;-><init>()V

    goto :goto_0

    .line 46
    :pswitch_1
    new-instance v0, Lnet/sharpspot/dinnerin/Fragments/RecipeIngredientsFragment;

    invoke-direct {v0}, Lnet/sharpspot/dinnerin/Fragments/RecipeIngredientsFragment;-><init>()V

    goto :goto_0

    .line 48
    :pswitch_2
    new-instance v0, Lnet/sharpspot/dinnerin/Fragments/RecipeStepsFragment;

    invoke-direct {v0}, Lnet/sharpspot/dinnerin/Fragments/RecipeStepsFragment;-><init>()V

    goto :goto_0

    .line 50
    :pswitch_3
    new-instance v0, Lnet/sharpspot/dinnerin/Fragments/RecipeLinksFragment;

    invoke-direct {v0}, Lnet/sharpspot/dinnerin/Fragments/RecipeLinksFragment;-><init>()V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Adapters/RecipePagerAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 34
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    const-string v0, "Details"

    goto :goto_0

    .line 28
    :pswitch_1
    const-string v0, "Ingredients"

    goto :goto_0

    .line 30
    :pswitch_2
    const-string v0, "Steps"

    goto :goto_0

    .line 32
    :pswitch_3
    const-string v0, "Links"

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Adapters/RecipePagerAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
