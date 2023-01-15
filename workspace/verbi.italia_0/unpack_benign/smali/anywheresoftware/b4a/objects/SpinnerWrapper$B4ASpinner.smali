.class public Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;
.super Landroid/widget/Spinner;
.source "SpinnerWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SpinnerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "B4ASpinner"
.end annotation


# instance fields
.field public adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

.field public ba:Lanywheresoftware/b4a/BA;

.field public disallowItemClick:Z

.field public eventName:Ljava/lang/String;

.field selectedItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 202
    new-instance v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-direct {v0, p1}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    .line 203
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 204
    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 209
    iput p1, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    .line 210
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->ba:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->ba:Lanywheresoftware/b4a/BA;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->eventName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_itemclick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 212
    iget v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget v5, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    invoke-virtual {v4, v5}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 211
    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v1, v2}, Lanywheresoftware/b4a/BA;->raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_0
    return-void
.end method
