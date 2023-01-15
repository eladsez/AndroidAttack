.class public Lnet/sharpspot/dinnerin/Activities/RecipeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RecipeActivity.java"


# static fields
.field private static final CROP_IMAGE_RESULT:I = 0x1

.field private static final DIALOG_CONFIRM_DELETE:I = 0x4

.field private static final DIALOG_EDIT_INGREDIENT:I = 0x5

.field private static final DIALOG_EDIT_STEP:I = 0x8

.field private static final DIALOG_EDIT_TAGS:I = 0x7

.field private static final DIALOG_EDIT_TEXT:I = 0x3

.field private static final DIALOG_SHARE_FILE_WAIT:I = 0x9

.field public static EditingIngredientIndexBundleKey:Ljava/lang/String; = null

.field public static EditingLinkIndexBundleKey:Ljava/lang/String; = null

.field public static EditingStepIndexBundleKey:Ljava/lang/String; = null

.field public static EditingTextViewIdBundleKey:Ljava/lang/String; = null

.field public static final GET_RECIPE_RESULT:I = 0x6

.field public static RecipeKey:Ljava/lang/String; = null

.field public static SerializableBundleKey:Ljava/lang/String; = null

.field private static final TAKE_PICTURE_RESULT:I = 0x2


# instance fields
.field private WriteRecipeToFileHandler:Landroid/os/Handler;

.field private _editingIngredientIndex:Ljava/lang/Integer;

.field private _editingLinkIndex:Ljava/lang/Integer;

.field private _editingStepIndex:Ljava/lang/Integer;

.field private _editingTextViewId:Ljava/lang/Integer;

.field private _imageViewOnClickListener:Landroid/view/View$OnClickListener;

.field private _imgPicture:Landroid/widget/ImageView;

.field private _indicator:Lcom/viewpagerindicator/TitlePageIndicator;

.field private _ingredientClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private _linkedRecipeClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private _lstIngredients:Landroid/widget/ListView;

.field private _lstLinkedRecipes:Landroid/widget/ListView;

.field private _lstSteps:Landroid/widget/ListView;

.field private _pagerAdapter:Lnet/sharpspot/dinnerin/Adapters/RecipePagerAdapter;

.field private _recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

.field private _recipeFile:Ljava/io/File;

.field private _stepClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private _textViewOnClickListener:Landroid/view/View$OnClickListener;

.field private _txtCookTime:Landroid/widget/TextView;

.field private _txtDescription:Landroid/widget/TextView;

.field private _txtName:Landroid/widget/TextView;

.field private _txtPrepTime:Landroid/widget/TextView;

.field private _txtSource:Landroid/widget/TextView;

.field private _txtTags:Landroid/widget/TextView;

.field private _txtTagsClicked:Landroid/view/View$OnClickListener;

.field private _txtTitle:Landroid/widget/TextView;

.field private _viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "RecipeKey"

    sput-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->RecipeKey:Ljava/lang/String;

    .line 60
    const-string v0, "EditingTextViewIdBundleKey"

    sput-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingTextViewIdBundleKey:Ljava/lang/String;

    .line 61
    const-string v0, "SerializableBundleKey"

    sput-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->SerializableBundleKey:Ljava/lang/String;

    .line 62
    const-string v0, "EditingIngredientIndexBundleKey"

    sput-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingIngredientIndexBundleKey:Ljava/lang/String;

    .line 63
    const-string v0, "EditingStepIndexBundleKey"

    sput-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingStepIndexBundleKey:Ljava/lang/String;

    .line 64
    const-string v0, "EditingLinkIndexBundleKey"

    sput-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingLinkIndexBundleKey:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 76
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_viewPager:Landroid/support/v4/view/ViewPager;

    .line 77
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtTitle:Landroid/widget/TextView;

    .line 78
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtTags:Landroid/widget/TextView;

    .line 79
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtDescription:Landroid/widget/TextView;

    .line 80
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtSource:Landroid/widget/TextView;

    .line 81
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtName:Landroid/widget/TextView;

    .line 82
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtPrepTime:Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtCookTime:Landroid/widget/TextView;

    .line 84
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    .line 85
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    .line 86
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    .line 87
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_imgPicture:Landroid/widget/ImageView;

    .line 88
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 89
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    .line 90
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_pagerAdapter:Lnet/sharpspot/dinnerin/Adapters/RecipePagerAdapter;

    .line 92
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    .line 93
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingStepIndex:Ljava/lang/Integer;

    .line 94
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingLinkIndex:Ljava/lang/Integer;

    .line 95
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingTextViewId:Ljava/lang/Integer;

    .line 97
    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipeFile:Ljava/io/File;

    .line 321
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$1;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$1;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_ingredientClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 329
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$2;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$2;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_stepClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 337
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$3;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$3;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_linkedRecipeClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 348
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$4;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$4;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_imageViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 680
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$5;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$5;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->WriteRecipeToFileHandler:Landroid/os/Handler;

    .line 1071
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$6;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$6;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_textViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 1079
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$7;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$7;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtTagsClicked:Landroid/view/View$OnClickListener;

    .line 57
    return-void
.end method

.method private AddIngredient()V
    .locals 2

    .prologue
    .line 559
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;-><init>(Landroid/content/Context;)V

    .line 561
    .local v0, "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditIngredient(I)V

    .line 565
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;->notifyDataSetChanged()V

    .line 566
    return-void
.end method

.method private AddLink()V
    .locals 3

    .prologue
    .line 627
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "ReturnValue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 630
    return-void
.end method

.method private AddSelectedLink(Ljava/lang/String;)V
    .locals 4
    .param p1, "recipeKey"    # Ljava/lang/String;

    .prologue
    .line 634
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/LinkClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/LinkClass;-><init>(Landroid/content/Context;)V

    .line 636
    .local v0, "link":Lnet/sharpspot/dinnerin/Classes/LinkClass;
    invoke-virtual {v0, p1}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->setLinkedRecipeKey(Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    new-instance v2, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetLinkedRecipes()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 641
    return-void
.end method

.method private AddStep()V
    .locals 2

    .prologue
    .line 593
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/StepClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/StepClass;-><init>(Landroid/content/Context;)V

    .line 595
    .local v0, "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSteps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSteps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditStep(Ljava/lang/Integer;)V

    .line 599
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 600
    return-void
.end method

.method private DeleteIngredient(I)V
    .locals 3
    .param p1, "ingredientIndex"    # I

    .prologue
    .line 577
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .line 579
    .local v0, "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->Delete()V

    .line 583
    const-string v1, "Ingredient deleted."

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 585
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;->notifyDataSetChanged()V

    .line 587
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    .line 588
    return-void
.end method

.method private DeleteLink(I)V
    .locals 4
    .param p1, "linkIndex"    # I

    .prologue
    .line 645
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/LinkClass;

    .line 647
    .local v0, "link":Lnet/sharpspot/dinnerin/Classes/LinkClass;
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->Delete()V

    .line 651
    const-string v1, "Link deleted."

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 653
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    new-instance v2, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetLinkedRecipes()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 655
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingLinkIndex:Ljava/lang/Integer;

    .line 656
    return-void
.end method

.method private DeleteRecipe()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->showDialog(I)V

    .line 545
    :cond_0
    return-void
.end method

.method private DeleteStep(I)V
    .locals 3
    .param p1, "stepIndex"    # I

    .prologue
    .line 605
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/StepClass;

    .line 607
    .local v0, "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSteps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/StepClass;->Delete()V

    .line 611
    const-string v1, "Step deleted."

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 613
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 615
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingStepIndex:Ljava/lang/Integer;

    .line 616
    return-void
.end method

.method private EditIngredient(I)V
    .locals 2
    .param p1, "ingredientIndex"    # I

    .prologue
    .line 570
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    .line 572
    const/4 v0, 0x5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 573
    return-void
.end method

.method private EditStep(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "stepIndex"    # Ljava/lang/Integer;

    .prologue
    .line 620
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingStepIndex:Ljava/lang/Integer;

    .line 622
    const/16 v0, 0x8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 623
    return-void
.end method

.method private EditTags()V
    .locals 2

    .prologue
    .line 1134
    const/4 v0, 0x7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1135
    return-void
.end method

.method private EditTextValue(I)V
    .locals 2
    .param p1, "textViewId"    # I

    .prologue
    .line 660
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingTextViewId:Ljava/lang/Integer;

    .line 661
    const/4 v0, 0x3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 662
    return-void
.end method

.method private GetCroppedImage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1111
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1113
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    const-string v2, "aspectX"

    sget v3, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->RECIPE_IMAGE_WIDTH:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1116
    const-string v2, "aspectY"

    sget v3, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->RECIPE_IMAGE_HEIGHT:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1117
    const-string v2, "outputX"

    sget v3, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->RECIPE_IMAGE_WIDTH:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1118
    const-string v2, "outputY"

    sget v3, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->RECIPE_IMAGE_HEIGHT:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1119
    const-string v2, "scale"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1120
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1121
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const-string v2, "noFaceDetection"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1124
    const-string v2, "Choose Image"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private GetIngredientFromDialog(Landroid/content/DialogInterface;)Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1166
    const/4 v3, 0x0

    .line 1167
    .local v3, "textView":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 1168
    .local v2, "spinner":Landroid/widget/Spinner;
    const/4 v0, 0x0

    .line 1169
    .local v0, "customDialog":Lnet/sharpspot/dinnerin/CustomDialog;
    const/4 v1, 0x0

    .local v1, "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    move-object v0, p1

    .line 1171
    check-cast v0, Lnet/sharpspot/dinnerin/CustomDialog;

    .line 1173
    new-instance v1, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .end local v1    # "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    invoke-direct {v1, p0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;-><init>(Landroid/content/Context;)V

    .line 1175
    .restart local v1    # "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    const v4, 0x7f050019

    invoke-virtual {v0, v4}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1176
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setName(Ljava/lang/String;)V

    .line 1178
    const v4, 0x7f050016

    invoke-virtual {v0, v4}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1179
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 1180
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setWholeAmount(Ljava/lang/Integer;)V

    .line 1184
    :goto_0
    const v4, 0x7f050017

    invoke-virtual {v0, v4}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "spinner":Landroid/widget/Spinner;
    check-cast v2, Landroid/widget/Spinner;

    .line 1185
    .restart local v2    # "spinner":Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    invoke-virtual {v4}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setFractionKey(Ljava/lang/String;)V

    .line 1187
    const v4, 0x7f050018

    invoke-virtual {v0, v4}, Lnet/sharpspot/dinnerin/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "spinner":Landroid/widget/Spinner;
    check-cast v2, Landroid/widget/Spinner;

    .line 1188
    .restart local v2    # "spinner":Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    invoke-virtual {v4}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setMeasurementKey(Ljava/lang/String;)V

    .line 1190
    return-object v1

    .line 1182
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setWholeAmount(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private GetRecipeKey(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 308
    if-eqz p1, :cond_1

    sget-object v3, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->RecipeKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "recipeKey":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 315
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    sget-object v2, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->RecipeKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-object v1

    .end local v1    # "recipeKey":Ljava/lang/String;
    :cond_1
    move-object v1, v2

    .line 308
    goto :goto_0

    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v1    # "recipeKey":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 315
    goto :goto_1
.end method

.method private InitializeComponets()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lnet/sharpspot/dinnerin/Adapters/RecipePagerAdapter;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sharpspot/dinnerin/Adapters/RecipePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_pagerAdapter:Lnet/sharpspot/dinnerin/Adapters/RecipePagerAdapter;

    .line 182
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_viewPager:Landroid/support/v4/view/ViewPager;

    .line 183
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_pagerAdapter:Lnet/sharpspot/dinnerin/Adapters/RecipePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 185
    const v0, 0x7f05002c

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TitlePageIndicator;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    .line 186
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_indicator:Lcom/viewpagerindicator/TitlePageIndicator;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 188
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtTitle:Landroid/widget/TextView;

    .line 189
    return-void
.end method

.method private InitializeFragmentComponets(I)V
    .locals 3
    .param p1, "page"    # I

    .prologue
    const/4 v2, 0x0

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 203
    :pswitch_0
    const v0, 0x7f050039

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtCookTime:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtCookTime:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_textViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v0, 0x7f050037

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtPrepTime:Landroid/widget/TextView;

    .line 207
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtPrepTime:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_textViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v0, 0x7f050031

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtDescription:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_textViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v0, 0x7f050035

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtTags:Landroid/widget/TextView;

    .line 213
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtTags:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtTagsClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v0, 0x7f050033

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtSource:Landroid/widget/TextView;

    .line 216
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtSource:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_textViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtName:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtName:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_textViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v0, 0x7f05002e

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_imgPicture:Landroid/widget/ImageView;

    .line 222
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_imgPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_imageViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_imgPicture:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_0

    .line 227
    :pswitch_1
    const v0, 0x7f05003b

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    .line 228
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    const v1, 0x7f05003c

    invoke-virtual {p0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 229
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 230
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_ingredientClicked:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_0

    .line 235
    :pswitch_2
    const v0, 0x7f050043

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    .line 236
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    const v1, 0x7f050044

    invoke-virtual {p0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 238
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_stepClicked:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 239
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_0

    .line 242
    :pswitch_3
    const v0, 0x7f05003d

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    .line 243
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    const v1, 0x7f05003e

    invoke-virtual {p0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 244
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 245
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_linkedRecipeClicked:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private LoadDataFromControls()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setName(Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtSource:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtSource:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setSource(Ljava/lang/String;)V

    .line 294
    :cond_1
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setDescription(Ljava/lang/String;)V

    .line 297
    :cond_2
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtPrepTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 298
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtPrepTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setPrepTime(Ljava/lang/String;)V

    .line 300
    :cond_3
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtCookTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtCookTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setCookTime(Ljava/lang/String;)V

    .line 303
    :cond_4
    return-void
.end method

.method private LoadDataToFragement(I)V
    .locals 4
    .param p1, "page"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    if-eqz v0, :cond_0

    .line 255
    packed-switch p1, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtName:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtSource:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtTags:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetRecipeTagDisplayString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtPrepTime:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getPrepTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtCookTime:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getCookTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_imgPicture:Landroid/widget/ImageView;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_imgPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    new-instance v1, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 275
    :pswitch_2
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f030011

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSteps()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 278
    :pswitch_3
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    new-instance v1, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;

    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetLinkedRecipes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lnet/sharpspot/dinnerin/Adapters/RecipeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private LoadRecipe(Ljava/lang/String;)V
    .locals 2
    .param p1, "recipeKey"    # Ljava/lang/String;

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 142
    :goto_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void

    .line 140
    :cond_0
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-direct {v0, p0, p1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    goto :goto_0
.end method

.method private SaveIngredientChanges(Lnet/sharpspot/dinnerin/Classes/IngredientClass;Z)V
    .locals 5
    .param p1, "editedIngredient"    # Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    .param p2, "scaleRecipe"    # Z

    .prologue
    .line 1139
    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 1141
    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .line 1143
    .local v2, "originalIngredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    if-eqz p2, :cond_1

    .line 1145
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetConversionValue()F

    move-result v3

    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetConversionValue()F

    move-result v4

    div-float v0, v3, v4

    .line 1147
    .local v0, "conversionFactor":F
    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1156
    .end local v0    # "conversionFactor":F
    :cond_1
    invoke-virtual {p1, v2}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->CopyTo(Lnet/sharpspot/dinnerin/Classes/IngredientClass;)V

    .line 1158
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    .line 1160
    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Adapters/IngredientAdapter;->notifyDataSetChanged()V

    .line 1162
    .end local v2    # "originalIngredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    :cond_2
    return-void

    .line 1147
    .restart local v0    # "conversionFactor":F
    .restart local v2    # "originalIngredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .line 1149
    .local v1, "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1151
    invoke-virtual {v1, v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->Scale(F)V

    goto :goto_0
.end method

.method private SaveRecipe()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    if-eqz v0, :cond_0

    .line 551
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->LoadDataFromControls()V

    .line 553
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->CommitAsync()V

    .line 555
    :cond_0
    return-void
.end method

.method private SetupSpinner(Landroid/view/View;ILjava/util/List;Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 1062
    .local p3, "collection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p4, "blank":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    invoke-interface {p3, v1, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1064
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1066
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1068
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1069
    return-void
.end method

.method private ShareRecipe()V
    .locals 1

    .prologue
    .line 666
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->showDialog(I)V

    .line 668
    new-instance v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$8;

    invoke-direct {v0, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$8;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    .line 677
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$8;->start()V

    .line 678
    return-void
.end method

.method private TakePicture()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1091
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1094
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const-string v2, "noFaceDetection"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1097
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1100
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private WriteRecipeToFile()Ljava/io/File;
    .locals 12

    .prologue
    .line 702
    const/4 v2, 0x0

    .line 703
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 704
    .local v3, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 706
    .local v7, "root":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 708
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/Recipes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 711
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->LoadDataFromControls()V

    .line 713
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v10}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".htm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 717
    .restart local v2    # "file":Ljava/io/File;
    :try_start_0
    const-string v9, "ShareTemplate.htm"

    invoke-static {p0, v9}, Lnet/sharpspot/dinnerin/Helper;->GetTemplate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 719
    .local v8, "shareTemplate":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v9, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v9}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->ToHtml()Ljava/lang/String;

    move-result-object v6

    .line 723
    .local v6, "recipeContent":Ljava/lang/String;
    iget-object v9, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v9}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetLinkedRecipes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 726
    const-string v9, "#Name#"

    iget-object v10, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v10}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 727
    const-string v9, "#Recipe#"

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 729
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 730
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    move-object v3, v4

    .line 739
    .end local v0    # "dir":Ljava/io/File;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "recipeContent":Ljava/lang/String;
    .end local v8    # "shareTemplate":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-object v2

    .line 723
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "recipeContent":Ljava/lang/String;
    .restart local v8    # "shareTemplate":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 724
    .local v5, "recipe":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->ToHtml()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .line 733
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "recipe":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    .end local v6    # "recipeContent":Ljava/lang/String;
    .end local v8    # "shareTemplate":Ljava/lang/String;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 735
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unable to share recipe: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 733
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "shareTemplate":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method static synthetic access$0(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;I)V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditIngredient(I)V

    return-void
.end method

.method static synthetic access$1(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditStep(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$10(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Landroid/content/DialogInterface;)Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    .locals 1

    .prologue
    .line 1164
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->GetIngredientFromDialog(Landroid/content/DialogInterface;)Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Lnet/sharpspot/dinnerin/Classes/IngredientClass;Z)V
    .locals 0

    .prologue
    .line 1137
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->SaveIngredientChanges(Lnet/sharpspot/dinnerin/Classes/IngredientClass;Z)V

    return-void
.end method

.method static synthetic access$12(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$13(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingTextViewId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$14(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingTextViewId:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$17(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingStepIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$18(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$19(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingStepIndex:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$2(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$20(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;I)V
    .locals 0

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->DeleteStep(I)V

    return-void
.end method

.method static synthetic access$21(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$22(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;I)V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->DeleteIngredient(I)V

    return-void
.end method

.method static synthetic access$23(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingLinkIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$24(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;I)V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->DeleteLink(I)V

    return-void
.end method

.method static synthetic access$25(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Lnet/sharpspot/dinnerin/Classes/RecipeClass;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    return-void
.end method

.method static synthetic access$26(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_txtTags:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipeFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$4(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    return-object v0
.end method

.method static synthetic access$5(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;I)V
    .locals 0

    .prologue
    .line 658
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditTextValue(I)V

    return-void
.end method

.method static synthetic access$6(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V
    .locals 0

    .prologue
    .line 1132
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditTags()V

    return-void
.end method

.method static synthetic access$7(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 700
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->WriteRecipeToFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipeFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$9(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->WriteRecipeToFileHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public LoadFragment(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->InitializeFragmentComponets(I)V

    .line 194
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->LoadDataToFragement(I)V

    .line 195
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->SaveRecipe()V

    .line 175
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 176
    return-void
.end method

.method public getRecipe()Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 359
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 361
    packed-switch p1, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 364
    :pswitch_1
    if-ne p2, v2, :cond_0

    .line 366
    if-eqz p3, :cond_0

    .line 368
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 369
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 371
    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setImage(Landroid/graphics/Bitmap;)V

    .line 372
    invoke-direct {p0, v4}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->LoadDataToFragement(I)V

    goto :goto_0

    .line 378
    .end local v0    # "extras":Landroid/os/Bundle;
    :pswitch_2
    if-eqz p3, :cond_0

    .line 380
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->RecipeKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "recipeKey":Ljava/lang/String;
    invoke-direct {p0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->AddSelectedLink(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    .end local v1    # "recipeKey":Ljava/lang/String;
    :pswitch_3
    if-ne p2, v2, :cond_0

    .line 388
    if-eqz p3, :cond_0

    .line 390
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 391
    .restart local v0    # "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 393
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 395
    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setImage(Landroid/graphics/Bitmap;)V

    .line 396
    invoke-direct {p0, v4}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->LoadDataToFragement(I)V

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 485
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 487
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 537
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 490
    :pswitch_1
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    if-ne v2, v3, :cond_1

    .line 491
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->AddStep()V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    if-ne v2, v3, :cond_2

    .line 493
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->AddIngredient()V

    goto :goto_0

    .line 494
    :cond_2
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    if-ne v2, v3, :cond_0

    .line 495
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->AddLink()V

    goto :goto_0

    .line 499
    :pswitch_2
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    if-ne v2, v3, :cond_3

    .line 500
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditStep(Ljava/lang/Integer;)V

    goto :goto_0

    .line 501
    :cond_3
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    if-ne v2, v3, :cond_0

    .line 502
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditIngredient(I)V

    goto :goto_0

    .line 506
    :pswitch_3
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstSteps:Landroid/widget/ListView;

    if-ne v2, v3, :cond_4

    .line 508
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingStepIndex:Ljava/lang/Integer;

    .line 509
    invoke-virtual {p0, v4}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->showDialog(I)V

    goto :goto_0

    .line 511
    :cond_4
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstIngredients:Landroid/widget/ListView;

    if-ne v2, v3, :cond_5

    .line 513
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    .line 514
    invoke-virtual {p0, v4}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->showDialog(I)V

    goto :goto_0

    .line 516
    :cond_5
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_lstLinkedRecipes:Landroid/widget/ListView;

    if-ne v2, v3, :cond_0

    .line 518
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingLinkIndex:Ljava/lang/Integer;

    .line 519
    invoke-virtual {p0, v4}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 524
    :pswitch_4
    iget-object v2, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setImage(Landroid/graphics/Bitmap;)V

    .line 525
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->LoadDataToFragement(I)V

    goto/16 :goto_0

    .line 529
    :pswitch_5
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->TakePicture()V

    goto/16 :goto_0

    .line 533
    :pswitch_6
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->GetCroppedImage()V

    goto/16 :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x7f050049
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->setContentView(I)V

    .line 116
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->InitializeComponets()V

    .line 118
    if-eqz p1, :cond_0

    sget-object v1, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingIngredientIndexBundleKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingIngredientIndexBundleKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingStepIndexBundleKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    sget-object v1, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingStepIndexBundleKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingStepIndex:Ljava/lang/Integer;

    .line 124
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingLinkIndexBundleKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    sget-object v1, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingLinkIndexBundleKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingLinkIndex:Ljava/lang/Integer;

    .line 127
    :cond_2
    if-eqz p1, :cond_3

    sget-object v1, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingTextViewIdBundleKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    sget-object v1, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingTextViewIdBundleKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingTextViewId:Ljava/lang/Integer;

    .line 130
    :cond_3
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->GetRecipeKey(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "recipeKey":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->LoadRecipe(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 468
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 469
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 471
    .local v0, "inflater":Landroid/view/MenuInflater;
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_imgPicture:Landroid/widget/ImageView;

    if-ne p2, v1, :cond_1

    .line 472
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 477
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 478
    const v1, 0x7f05004a

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x1020014

    .line 745
    const/4 v2, 0x0

    .line 746
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 747
    .local v4, "factory":Landroid/view/LayoutInflater;
    new-instance v1, Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    invoke-direct {v1, p0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 749
    .local v1, "builder":Lnet/sharpspot/dinnerin/CustomDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 951
    :pswitch_0
    const/4 v2, 0x0

    .line 954
    :goto_0
    return-object v2

    .line 753
    :pswitch_1
    const v8, 0x7f030003

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 755
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f050017

    invoke-static {p0}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->GetFractions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lnet/sharpspot/dinnerin/Classes/FractionClass;

    const-string v11, ""

    invoke-direct {v10, p0, v11}, Lnet/sharpspot/dinnerin/Classes/FractionClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v7, v8, v9, v10}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->SetupSpinner(Landroid/view/View;ILjava/util/List;Ljava/lang/Object;)V

    .line 756
    const v8, 0x7f050018

    invoke-static {p0}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->GetMeasurements(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    const-string v11, ""

    invoke-direct {v10, p0, v11}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v7, v8, v9, v10}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->SetupSpinner(Landroid/view/View;ILjava/util/List;Ljava/lang/Object;)V

    .line 758
    const-string v8, "Ingredient"

    invoke-virtual {v1, v8}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 759
    invoke-virtual {v1, v7}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setView(Landroid/view/View;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 760
    const-string v8, "Ok"

    new-instance v9, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$9;

    invoke-direct {v9, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$9;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    invoke-virtual {v1, v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 771
    const-string v8, "Cancel"

    new-instance v9, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$10;

    invoke-direct {v9, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$10;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    invoke-virtual {v1, v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 780
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v2

    .line 781
    goto :goto_0

    .line 784
    .end local v7    # "view":Landroid/view/View;
    :pswitch_2
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 786
    .local v3, "editTextView":Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->setId(I)V

    .line 788
    const-string v8, "Edit"

    invoke-virtual {v1, v8}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 789
    invoke-virtual {v1, v3}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setView(Landroid/view/View;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 790
    const-string v8, "Ok"

    new-instance v9, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;

    invoke-direct {v9, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$11;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    invoke-virtual {v1, v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 811
    const-string v8, "Cancel"

    new-instance v9, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$12;

    invoke-direct {v9, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$12;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    invoke-virtual {v1, v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 820
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v2

    .line 821
    goto :goto_0

    .line 824
    .end local v3    # "editTextView":Landroid/view/View;
    :pswitch_3
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 826
    .local v6, "stepTextView":Landroid/view/View;
    invoke-virtual {v6, v8}, Landroid/view/View;->setId(I)V

    .line 828
    const-string v8, "Step"

    invoke-virtual {v1, v8}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 829
    invoke-virtual {v1, v6}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setView(Landroid/view/View;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 830
    const-string v8, "Ok"

    new-instance v9, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$13;

    invoke-direct {v9, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$13;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    invoke-virtual {v1, v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 851
    const-string v8, "Cancel"

    new-instance v9, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$14;

    invoke-direct {v9, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$14;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    invoke-virtual {v1, v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 860
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v2

    .line 861
    goto/16 :goto_0

    .line 864
    .end local v6    # "stepTextView":Landroid/view/View;
    :pswitch_4
    const-string v8, "Are you sure you want to delete this item?"

    invoke-virtual {v1, v8}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 865
    const-string v8, "Delete"

    invoke-virtual {v1, v8}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 866
    const-string v8, "Ok"

    new-instance v9, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;

    invoke-direct {v9, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$15;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    invoke-virtual {v1, v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 886
    const-string v8, "Cancel"

    new-instance v9, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$16;

    invoke-direct {v9, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$16;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    invoke-virtual {v1, v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 894
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v2

    .line 895
    goto/16 :goto_0

    .line 900
    :pswitch_5
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 902
    .local v5, "listView":Landroid/widget/ListView;
    const v8, 0x102000a

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setId(I)V

    .line 906
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x1090010

    invoke-static {p0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->GetTags(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v0, p0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 907
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lnet/sharpspot/dinnerin/Classes/TagClass;>;"
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 908
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 910
    const-string v8, "Tags"

    invoke-virtual {v1, v8}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 911
    invoke-virtual {v1, v5}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setView(Landroid/view/View;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 912
    const-string v8, "Ok"

    new-instance v9, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$17;

    invoke-direct {v9, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$17;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    invoke-virtual {v1, v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 935
    const-string v8, "Cancel"

    new-instance v9, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$18;

    invoke-direct {v9, p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$18;-><init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V

    invoke-virtual {v1, v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    .line 943
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v2

    .line 944
    goto/16 :goto_0

    .line 947
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lnet/sharpspot/dinnerin/Classes/TagClass;>;"
    .end local v5    # "listView":Landroid/widget/ListView;
    :pswitch_6
    new-instance v8, Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    invoke-direct {v8, p0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setShowProgress(Z)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    move-result-object v8

    const-string v9, "Preparing file..."

    invoke-virtual {v8, v9}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;

    move-result-object v2

    .line 948
    goto/16 :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 408
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 409
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 410
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 440
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 461
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 443
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/sharpspot/dinnerin/Activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 446
    :pswitch_1
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->DeleteRecipe()V

    goto :goto_0

    .line 449
    :pswitch_2
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->AddStep()V

    goto :goto_0

    .line 452
    :pswitch_3
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->AddIngredient()V

    goto :goto_0

    .line 455
    :pswitch_4
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->AddLink()V

    goto :goto_0

    .line 458
    :pswitch_5
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->ShareRecipe()V

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x7f050050
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 961
    packed-switch p1, :pswitch_data_0

    .line 1056
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p3, :cond_1

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->clear()V

    .line 1058
    :cond_1
    return-void

    .line 964
    :pswitch_1
    const/4 v13, 0x0

    .line 965
    .local v13, "textView":Landroid/widget/EditText;
    const/4 v10, 0x0

    .line 966
    .local v10, "spinner":Landroid/widget/Spinner;
    const/4 v6, 0x0

    .line 967
    .local v6, "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    const/4 v2, 0x0

    .line 969
    .local v2, "checkBox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    if-eqz v14, :cond_0

    .line 971
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v14}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    check-cast v6, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .line 973
    .restart local v6    # "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    const v14, 0x7f050019

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "textView":Landroid/widget/EditText;
    check-cast v13, Landroid/widget/EditText;

    .line 974
    .restart local v13    # "textView":Landroid/widget/EditText;
    invoke-virtual {v6}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 975
    invoke-virtual {v13}, Landroid/widget/EditText;->requestFocus()Z

    .line 976
    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setSelection(I)V

    .line 978
    const v14, 0x7f050016

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "textView":Landroid/widget/EditText;
    check-cast v13, Landroid/widget/EditText;

    .line 979
    .restart local v13    # "textView":Landroid/widget/EditText;
    invoke-virtual {v6}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v14

    if-nez v14, :cond_2

    .line 980
    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 988
    :goto_1
    const v14, 0x7f050017

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "spinner":Landroid/widget/Spinner;
    check-cast v10, Landroid/widget/Spinner;

    .line 989
    .restart local v10    # "spinner":Landroid/widget/Spinner;
    invoke-virtual {v6}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 990
    invoke-virtual {v10}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    check-cast v14, Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 994
    :goto_2
    const v14, 0x7f050018

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "spinner":Landroid/widget/Spinner;
    check-cast v10, Landroid/widget/Spinner;

    .line 995
    .restart local v10    # "spinner":Landroid/widget/Spinner;
    invoke-virtual {v6}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 996
    invoke-virtual {v10}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    check-cast v14, Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1000
    :goto_3
    const v14, 0x7f05001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "checkBox":Landroid/widget/CheckBox;
    check-cast v2, Landroid/widget/CheckBox;

    .line 1001
    .restart local v2    # "checkBox":Landroid/widget/CheckBox;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 983
    :cond_2
    invoke-virtual {v6}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 984
    invoke-virtual {v13}, Landroid/widget/EditText;->requestFocus()Z

    .line 985
    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 992
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 998
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1007
    .end local v2    # "checkBox":Landroid/widget/CheckBox;
    .end local v6    # "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    .end local v10    # "spinner":Landroid/widget/Spinner;
    .end local v13    # "textView":Landroid/widget/EditText;
    :pswitch_2
    const/4 v9, 0x0

    .line 1008
    .local v9, "recipeTextView":Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 1010
    .local v3, "dialogEditText":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingTextViewId:Ljava/lang/Integer;

    if-eqz v14, :cond_0

    .line 1012
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingTextViewId:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "recipeTextView":Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 1013
    .restart local v9    # "recipeTextView":Landroid/widget/TextView;
    const v14, 0x1020014

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "dialogEditText":Landroid/widget/EditText;
    check-cast v3, Landroid/widget/EditText;

    .line 1015
    .restart local v3    # "dialogEditText":Landroid/widget/EditText;
    invoke-virtual {v9}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1016
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1018
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 1022
    .end local v3    # "dialogEditText":Landroid/widget/EditText;
    .end local v9    # "recipeTextView":Landroid/widget/TextView;
    :pswitch_3
    const/4 v11, 0x0

    .line 1024
    .local v11, "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingStepIndex:Ljava/lang/Integer;

    if-eqz v14, :cond_0

    .line 1026
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v14}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSteps()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingStepIndex:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    check-cast v11, Lnet/sharpspot/dinnerin/Classes/StepClass;

    .line 1028
    .restart local v11    # "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    const v14, 0x1020014

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1030
    .local v4, "dialogStepEditText":Landroid/widget/EditText;
    invoke-virtual {v11}, Lnet/sharpspot/dinnerin/Classes/StepClass;->getDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 1032
    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v14

    invoke-virtual {v4, v14}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 1038
    .end local v4    # "dialogStepEditText":Landroid/widget/EditText;
    .end local v11    # "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    :pswitch_4
    const v14, 0x102000a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 1039
    .local v8, "listView":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v14}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetRecipeTagIds()Ljava/util/ArrayList;

    move-result-object v12

    .line 1040
    .local v12, "tagIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 1042
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lnet/sharpspot/dinnerin/Classes/TagClass;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eqz v14, :cond_0

    .line 1044
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v14

    if-ge v5, v14, :cond_0

    .line 1046
    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 1048
    .local v7, "item":Lnet/sharpspot/dinnerin/Classes/TagClass;
    invoke-virtual {v7}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1049
    const/4 v14, 0x1

    invoke-virtual {v8, v5, v14}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1044
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f050053

    const v4, 0x7f050052

    const v3, 0x7f050051

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 417
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 421
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 434
    :goto_0
    return v1

    .line 424
    :pswitch_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 427
    :pswitch_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 430
    :pswitch_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    if-eqz v0, :cond_3

    .line 152
    invoke-direct {p0}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->SaveRecipe()V

    .line 154
    sget-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->RecipeKey:Ljava/lang/String;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingIngredientIndexBundleKey:Ljava/lang/String;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingIngredientIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    :cond_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingStepIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingStepIndexBundleKey:Ljava/lang/String;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingStepIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    :cond_1
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingLinkIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 163
    sget-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingLinkIndexBundleKey:Ljava/lang/String;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingLinkIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    :cond_2
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingTextViewId:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 166
    sget-object v0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->EditingTextViewIdBundleKey:Ljava/lang/String;

    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_editingTextViewId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    :cond_3
    return-void
.end method

.method public setRecipe(Lnet/sharpspot/dinnerin/Classes/RecipeClass;)V
    .locals 0
    .param p1, "recipe"    # Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .prologue
    .line 106
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->_recipe:Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 107
    return-void
.end method
