.class public Lnet/sharpspot/dinnerin/Fragments/RecipeIngredientsFragment;
.super Landroid/support/v4/app/Fragment;
.source "RecipeIngredientsFragment.java"


# instance fields
.field private _parentActivity:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Fragments/RecipeIngredientsFragment;->_parentActivity:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 11
    return-void
.end method


# virtual methods
.method public getParentActivity()Lnet/sharpspot/dinnerin/Activities/RecipeActivity;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Fragments/RecipeIngredientsFragment;->_parentActivity:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Fragments/RecipeIngredientsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Fragments/RecipeIngredientsFragment;->_parentActivity:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 38
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Fragments/RecipeIngredientsFragment;->getParentActivity()Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->LoadFragment(I)V

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public setParentActivity(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V
    .locals 0
    .param p1, "parentActivity"    # Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .prologue
    .line 22
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Fragments/RecipeIngredientsFragment;->_parentActivity:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 23
    return-void
.end method
