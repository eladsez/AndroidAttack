.class public Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;
.super Ljava/lang/Object;
.source "ActivityWrapper.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$IterableList;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/ActivityWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllViewsIterator"
.end annotation


# instance fields
.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;->views:Ljava/util/ArrayList;

    .line 377
    invoke-direct {p0, p1}, Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;->addViews(Landroid/view/ViewGroup;)V

    .line 378
    return-void
.end method

.method private addViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 386
    return-void

    .line 381
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 382
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 384
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "v":Landroid/view/View;
    invoke-direct {p0, v1}, Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;->addViews(Landroid/view/ViewGroup;)V

    .line 380
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper$AllViewsIterator;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
