.class public Lnet/sharpspot/dinnerin/Classes/RecipeClass;
.super Lnet/sharpspot/dinnerin/Classes/DataClass;
.source "RecipeClass.java"


# static fields
.field public static final COOK_TIME_COLUMN:Ljava/lang/String; = "CookTime"

.field private static final DEFAULT_NAME:Ljava/lang/String; = "New Recipe"

.field public static final DESCRIPTION_COLUMN:Ljava/lang/String; = "Description"

.field public static final IMAGE_COLUMN:Ljava/lang/String; = "Image"

.field public static final NAME_COLUMN:Ljava/lang/String; = "Name"

.field public static final PREP_TIME_COLUMN:Ljava/lang/String; = "PrepTime"

.field public static RECIPE_IMAGE_HEIGHT:I = 0x0

.field public static RECIPE_IMAGE_WIDTH:I = 0x0

.field public static RECIPE_THUMBNAIL_HEIGHT:I = 0x0

.field public static RECIPE_THUMBNAIL_WIDTH:I = 0x0

.field public static final SOURCE_COLUMN:Ljava/lang/String; = "Source"

.field public static final TABLE_NAME:Ljava/lang/String; = "tRecipe"

.field public static final THUMBNAIL_COLUMN:Ljava/lang/String; = "Thumbnail"


# instance fields
.field private _cookTime:Ljava/lang/String;

.field private _description:Ljava/lang/String;

.field private _image:Landroid/graphics/Bitmap;

.field private _ingredients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/IngredientClass;",
            ">;"
        }
    .end annotation
.end field

.field private _links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/LinkClass;",
            ">;"
        }
    .end annotation
.end field

.field private _menuRecipes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;",
            ">;"
        }
    .end annotation
.end field

.field private _name:Ljava/lang/String;

.field private _prepTime:Ljava/lang/String;

.field private _recipeTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;",
            ">;"
        }
    .end annotation
.end field

.field private _source:Ljava/lang/String;

.field private _steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/StepClass;",
            ">;"
        }
    .end annotation
.end field

.field private _thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x190

    sput v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->RECIPE_IMAGE_WIDTH:I

    .line 24
    const/16 v0, 0x12c

    sput v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->RECIPE_IMAGE_HEIGHT:I

    .line 26
    const/16 v0, 0x64

    sput v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->RECIPE_THUMBNAIL_WIDTH:I

    .line 27
    const/16 v0, 0x4b

    sput v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->RECIPE_THUMBNAIL_HEIGHT:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lnet/sharpspot/dinnerin/Classes/DataClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static CreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE tRecipe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v1, "Key text primary key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, "Name text not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, "Source text null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v1, "Description text null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, "PrepTime text null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v1, "CookTime text null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v1, "Image blob null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v1, "Thumbnail blob null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v1, "Version integer null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public static DropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 475
    const-string v0, "DROP TABLE IF EXISTS tRecipe"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public static GetRecipes(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    const-class v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    const-string v1, "SELECT * FROM %s ORDER BY %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tRecipe"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Name"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static GetRecipesByMenuKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    const-class v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 498
    const-string v1, "SELECT tRecipe.* FROM tRecipe INNER JOIN tMenuRecipe ON tRecipe.Key = tMenuRecipe.RecipeKey WHERE tMenuRecipe.MenuKey = \'%s\' ORDER BY tRecipe.Name"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 497
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static GetRecipesByName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    const-class v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 492
    const-string v1, "SELECT * FROM %s WHERE %s like \'%s\' ORDER BY %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tRecipe"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Name"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-static {v0, p0, v1}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static GetRecipesByTagKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    const-class v0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 486
    const-string v1, "SELECT tRecipe.* FROM tRecipe INNER JOIN tRecipeTag ON tRecipe.Key = tRecipeTag.RecipeKey WHERE tRecipeTag.TagKey = \'%s\' ORDER BY tRecipe.Name"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 485
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lnet/sharpspot/dinnerin/Database;->GetObjects(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private ImageToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 394
    .local v3, "imageBytes":[B
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 398
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 400
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 407
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v3

    .line 402
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    const-string v4, "ImageToByteArray"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public AddTag(Lnet/sharpspot/dinnerin/Classes/TagClass;)V
    .locals 2
    .param p1, "tag"    # Lnet/sharpspot/dinnerin/Classes/TagClass;

    .prologue
    .line 447
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;-><init>(Landroid/content/Context;)V

    .line 448
    .local v0, "recipeTag":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    invoke-virtual {p1}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->setTagKey(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getRecipeTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public Commit()V
    .locals 7

    .prologue
    .line 412
    invoke-super {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->Commit()V

    .line 414
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSteps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 420
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 426
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getLinks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 432
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getRecipeTags()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 438
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getMenuRecipes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 443
    return-void

    .line 414
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sharpspot/dinnerin/Classes/StepClass;

    .line 416
    .local v4, "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/sharpspot/dinnerin/Classes/StepClass;->setRecipeKey(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v4}, Lnet/sharpspot/dinnerin/Classes/StepClass;->Commit()V

    goto :goto_0

    .line 420
    .end local v4    # "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .line 422
    .local v0, "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->setRecipeKey(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->Commit()V

    goto :goto_1

    .line 426
    .end local v0    # "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/LinkClass;

    .line 428
    .local v1, "link":Lnet/sharpspot/dinnerin/Classes/LinkClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->setRecipeKey(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->Commit()V

    goto :goto_2

    .line 432
    .end local v1    # "link":Lnet/sharpspot/dinnerin/Classes/LinkClass;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;

    .line 434
    .local v3, "recipeTag":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->setRecipeKey(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->Commit()V

    goto :goto_3

    .line 438
    .end local v3    # "recipeTag":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;

    .line 440
    .local v2, "menuRecipe":Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->setRecipeKey(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->Commit()V

    goto :goto_4
.end method

.method public Delete()V
    .locals 8

    .prologue
    .line 339
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSteps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 342
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 345
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getLinks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 348
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getRecipeTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 351
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getMenuRecipes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 354
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIsNew()Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getDatabase()Lnet/sharpspot/dinnerin/Database;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sharpspot/dinnerin/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 357
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "tLink"

    const-string v4, "LinkRecipeKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 358
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 361
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-super {p0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->Delete()V

    .line 362
    return-void

    .line 339
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sharpspot/dinnerin/Classes/StepClass;

    .line 340
    .local v2, "s":Lnet/sharpspot/dinnerin/Classes/StepClass;
    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Classes/StepClass;->Delete()V

    goto :goto_0

    .line 342
    .end local v2    # "s":Lnet/sharpspot/dinnerin/Classes/StepClass;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .line 343
    .local v1, "i":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->Delete()V

    goto :goto_1

    .line 345
    .end local v1    # "i":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/LinkClass;

    .line 346
    .local v1, "i":Lnet/sharpspot/dinnerin/Classes/LinkClass;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->Delete()V

    goto :goto_2

    .line 348
    .end local v1    # "i":Lnet/sharpspot/dinnerin/Classes/LinkClass;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;

    .line 349
    .local v1, "i":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->Delete()V

    goto :goto_3

    .line 351
    .end local v1    # "i":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;

    .line 352
    .local v1, "i":Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->Delete()V

    goto :goto_4
.end method

.method public GetLinkedRecipes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v0, "collection":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/RecipeClass;>;"
    const/4 v1, 0x0

    .line 224
    .local v1, "item":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getLinks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    return-object v0

    .line 224
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sharpspot/dinnerin/Classes/LinkClass;

    .line 226
    .local v2, "link":Lnet/sharpspot/dinnerin/Classes/LinkClass;
    new-instance v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .end local v1    # "item":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->getLinkedRecipeKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    .restart local v1    # "item":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public GetRecipeTagDisplayString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 267
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 269
    .local v0, "display":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getRecipeTags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    return-object v0

    .line 269
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;

    .line 271
    .local v1, "recipeTag":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->GetTag()Lnet/sharpspot/dinnerin/Classes/TagClass;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetRecipeTagIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v1, "tagIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getRecipeTags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    return-object v1

    .line 237
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;

    .line 239
    .local v0, "recipeTag":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->getTagKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected GetTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const-string v0, "tRecipe"

    return-object v0
.end method

.method protected OnLoadData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 314
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnLoadData(Landroid/database/Cursor;)V

    .line 316
    const-string v0, "Name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setName(Ljava/lang/String;)V

    .line 317
    const-string v0, "Source"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setSource(Ljava/lang/String;)V

    .line 318
    const-string v0, "Description"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setDescription(Ljava/lang/String;)V

    .line 319
    const-string v0, "PrepTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setPrepTime(Ljava/lang/String;)V

    .line 320
    const-string v0, "CookTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setCookTime(Ljava/lang/String;)V

    .line 321
    const-string v0, "Image"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->SetImage([B)V

    .line 322
    const-string v0, "Thumbnail"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->SetThumbnail([B)V

    .line 323
    return-void
.end method

.method protected OnPrepareCommitValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 366
    const-string v0, "Name"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "Source"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "Description"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v0, "PrepTime"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getPrepTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "CookTime"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getCookTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "Image"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->ImageToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 376
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->RECIPE_THUMBNAIL_WIDTH:I

    sget v2, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->RECIPE_THUMBNAIL_HEIGHT:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 378
    const-string v0, "Thumbnail"

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->ImageToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 385
    :goto_0
    return-void

    .line 382
    :cond_0
    const-string v0, "Image"

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 383
    const-string v0, "Thumbnail"

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method protected OnSetDefaults(Z)V
    .locals 1
    .param p1, "isSaving"    # Z

    .prologue
    .line 296
    invoke-super {p0, p1}, Lnet/sharpspot/dinnerin/Classes/DataClass;->OnSetDefaults(Z)V

    .line 298
    if-eqz p1, :cond_1

    .line 300
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    const-string v0, "New Recipe"

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setName(Ljava/lang/String;)V

    .line 303
    :cond_1
    return-void
.end method

.method public SetImage([B)V
    .locals 2
    .param p1, "imageBytes"    # [B

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setImage(Landroid/graphics/Bitmap;)V

    .line 329
    :cond_0
    return-void
.end method

.method public SetRecipeTagIds(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/TagClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "tagCol":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/TagClass;>;"
    const/4 v0, 0x0

    .line 249
    .local v0, "item":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getRecipeTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getRecipeTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 263
    return-void

    .line 249
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;

    .line 251
    .local v1, "recipeTag":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->Delete()V

    goto :goto_0

    .line 256
    .end local v1    # "recipeTag":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 258
    .local v2, "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    new-instance v0, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;

    .end local v0    # "item":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;-><init>(Landroid/content/Context;)V

    .line 259
    .restart local v0    # "item":Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;
    invoke-virtual {v2}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->setTagKey(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getRecipeTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public SetThumbnail([B)V
    .locals 2
    .param p1, "imageBytes"    # [B

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 335
    :cond_0
    return-void
.end method

.method public ToHtml()Ljava/lang/String;
    .locals 16

    .prologue
    .line 503
    const/4 v7, 0x0

    .line 505
    .local v7, "recipeTemplate":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "RecipeTemplate.htm"

    invoke-static {v12, v13}, Lnet/sharpspot/dinnerin/Helper;->GetTemplate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 507
    const-string v12, "#Name#"

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 509
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getDescription()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    .line 510
    const-string v12, "#Description#"

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 514
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSource()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    .line 515
    const-string v12, "#Source#"

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 519
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetRecipeTagDisplayString()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetRecipeTagDisplayString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    .line 520
    const-string v12, "#Tags#"

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetRecipeTagDisplayString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 524
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getPrepTime()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getPrepTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    .line 525
    const-string v12, "#PrepTime#"

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getPrepTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 529
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getCookTime()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getCookTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_4

    .line 530
    const-string v12, "#CookTime#"

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getCookTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 534
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getImage()Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_5

    .line 535
    const-string v12, "#Image#"

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020009

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-static {v13}, Lnet/sharpspot/dinnerin/Helper;->Base64Encode(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 539
    :goto_5
    const-string v3, ""

    .line 541
    .local v3, "ingredients":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getIngredients()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_6

    .line 574
    const-string v12, "#Ingredients#"

    invoke-virtual {v7, v12, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 576
    const-string v10, ""

    .line 578
    .local v10, "steps":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getSteps()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_a

    .line 585
    const-string v12, "#Steps#"

    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 587
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 589
    .local v4, "links":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->GetLinkedRecipes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_b

    .line 597
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_d

    .line 598
    const-string v12, "#Links#"

    invoke-virtual {v7, v12, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 602
    :goto_9
    return-object v7

    .line 512
    .end local v3    # "ingredients":Ljava/lang/String;
    .end local v4    # "links":Ljava/lang/String;
    .end local v10    # "steps":Ljava/lang/String;
    :cond_0
    const-string v12, "#Description#"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 517
    :cond_1
    const-string v12, "#Source#"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 522
    :cond_2
    const-string v12, "#Tags#"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 527
    :cond_3
    const-string v12, "#PrepTime#"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 532
    :cond_4
    const-string v12, "#CookTime#"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 537
    :cond_5
    const-string v12, "#Image#"

    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getImage()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-static {v13}, Lnet/sharpspot/dinnerin/Helper;->Base64Encode(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 541
    .restart local v3    # "ingredients":Ljava/lang/String;
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sharpspot/dinnerin/Classes/IngredientClass;

    .line 543
    .local v1, "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    const/4 v2, 0x0

    .line 544
    .local v2, "ingredientTemplate":Ljava/lang/String;
    const/4 v0, 0x0

    .line 545
    .local v0, "fraction":Ljava/lang/String;
    const/4 v5, 0x0

    .line 546
    .local v5, "measurement":Ljava/lang/String;
    const/4 v11, 0x0

    .line 548
    .local v11, "wholeAmount":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "IngredientTemplate.htm"

    invoke-static {v13, v14}, Lnet/sharpspot/dinnerin/Helper;->GetTemplate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v13

    if-nez v13, :cond_7

    .line 551
    const-string v0, ""

    .line 555
    :goto_a
    const-string v13, "#Fraction#"

    invoke-virtual {v2, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 557
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v13

    if-nez v13, :cond_8

    .line 558
    const-string v5, ""

    .line 562
    :goto_b
    const-string v13, "#Measurement#"

    invoke-virtual {v2, v13, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v13

    if-nez v13, :cond_9

    .line 565
    const-string v11, ""

    .line 569
    :goto_c
    const-string v13, "#WholeAmount#"

    invoke-virtual {v2, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 571
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "#Name#"

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 553
    :cond_7
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetFraction()Lnet/sharpspot/dinnerin/Classes/FractionClass;

    move-result-object v13

    invoke-virtual {v13}, Lnet/sharpspot/dinnerin/Classes/FractionClass;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 560
    :cond_8
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetMeasurement()Lnet/sharpspot/dinnerin/Classes/MeasurementClass;

    move-result-object v13

    invoke-virtual {v13}, Lnet/sharpspot/dinnerin/Classes/MeasurementClass;->getShortName()Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    .line 567
    :cond_9
    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->getWholeAmount()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_c

    .line 578
    .end local v0    # "fraction":Ljava/lang/String;
    .end local v1    # "ingredient":Lnet/sharpspot/dinnerin/Classes/IngredientClass;
    .end local v2    # "ingredientTemplate":Ljava/lang/String;
    .end local v5    # "measurement":Ljava/lang/String;
    .end local v11    # "wholeAmount":Ljava/lang/String;
    .restart local v10    # "steps":Ljava/lang/String;
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sharpspot/dinnerin/Classes/StepClass;

    .line 580
    .local v8, "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    invoke-virtual/range {p0 .. p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "StepTemplate.htm"

    invoke-static {v13, v14}, Lnet/sharpspot/dinnerin/Helper;->GetTemplate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 582
    .local v9, "stepTemplate":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "#Step#"

    invoke-virtual {v8}, Lnet/sharpspot/dinnerin/Classes/StepClass;->getDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    .line 589
    .end local v8    # "step":Lnet/sharpspot/dinnerin/Classes/StepClass;
    .end local v9    # "stepTemplate":Ljava/lang/String;
    .restart local v4    # "links":Ljava/lang/String;
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sharpspot/dinnerin/Classes/RecipeClass;

    .line 591
    .local v6, "recipe":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    .line 592
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 594
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 600
    .end local v6    # "recipe":Lnet/sharpspot/dinnerin/Classes/RecipeClass;
    :cond_d
    const-string v12, "#Links#"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_9
.end method

.method public getCookTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_cookTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIngredients()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/IngredientClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_ingredients:Ljava/util/List;

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Classes/IngredientClass;->GetIngredientsByRecipeKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setIngredients(Ljava/util/List;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_ingredients:Ljava/util/List;

    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/LinkClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_links:Ljava/util/List;

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Classes/LinkClass;->GetRecipeLinks(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setLinks(Ljava/util/List;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_links:Ljava/util/List;

    return-object v0
.end method

.method public getMenuRecipes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_menuRecipes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;->GetMenuRecipesByRecipeKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setMenuRecipes(Ljava/util/List;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_menuRecipes:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrepTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_prepTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipeTags()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_recipeTags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;->GetRecipeTags(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setRecipeTags(Ljava/util/List;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_recipeTags:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_source:Ljava/lang/String;

    return-object v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/StepClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_steps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Classes/StepClass;->GetRecipeSteps(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->setSteps(Ljava/util/List;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_steps:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setCookTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "cookTime"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_cookTime:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_cookTime:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->OnPropertyChanged()V

    .line 123
    :cond_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_description:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_description:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->OnPropertyChanged()V

    .line 109
    :cond_0
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 146
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_image:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 148
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_image:Landroid/graphics/Bitmap;

    .line 149
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->OnPropertyChanged()V

    .line 151
    :cond_0
    return-void
.end method

.method public setIngredients(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/IngredientClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "ingredients":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/IngredientClass;>;"
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_ingredients:Ljava/util/List;

    .line 191
    return-void
.end method

.method public setLinks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/LinkClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "links":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/LinkClass;>;"
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_links:Ljava/util/List;

    .line 204
    return-void
.end method

.method public setMenuRecipes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "menuRecipes":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/MenuRecipeClass;>;"
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_menuRecipes:Ljava/util/List;

    .line 291
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->ToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_name:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->OnPropertyChanged()V

    .line 81
    :cond_0
    return-void
.end method

.method public setPrepTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "prepTime"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_prepTime:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_prepTime:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->OnPropertyChanged()V

    .line 137
    :cond_0
    return-void
.end method

.method public setRecipeTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "recipeTags":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/RecipeTagClass;>;"
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_recipeTags:Ljava/util/List;

    .line 217
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_source:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Helper;->IsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_source:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->OnPropertyChanged()V

    .line 95
    :cond_0
    return-void
.end method

.method public setSteps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sharpspot/dinnerin/Classes/StepClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Lnet/sharpspot/dinnerin/Classes/StepClass;>;"
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_steps:Ljava/util/List;

    .line 178
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 160
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_thumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 162
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->_thumbnail:Landroid/graphics/Bitmap;

    .line 163
    invoke-virtual {p0}, Lnet/sharpspot/dinnerin/Classes/RecipeClass;->OnPropertyChanged()V

    .line 165
    :cond_0
    return-void
.end method
