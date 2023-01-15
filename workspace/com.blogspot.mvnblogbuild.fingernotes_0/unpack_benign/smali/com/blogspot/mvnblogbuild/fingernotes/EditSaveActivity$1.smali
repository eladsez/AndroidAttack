.class Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$1;
.super Ljava/lang/Object;
.source "EditSaveActivity.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/EditSaveActivity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 44
    .local v0, "c":Ljava/util/Calendar;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 45
    .local v3, "curYear":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 46
    .local v2, "curMonth":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 48
    .local v1, "curDay":I
    add-int/lit8 v4, v3, 0xa

    .line 50
    .local v4, "maxYear":I
    if-le p2, v4, :cond_0

    .line 51
    invoke-virtual {p1, v4, p3, p4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 54
    :cond_0
    if-lt p2, v3, :cond_2

    .line 55
    if-ne p2, v3, :cond_1

    if-lt p3, v2, :cond_2

    .line 56
    :cond_1
    if-ne p2, v3, :cond_3

    if-ne p3, v2, :cond_3

    if-ge p4, v1, :cond_3

    .line 58
    :cond_2
    invoke-virtual {p1, v3, v2, v1}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 60
    :cond_3
    return-void
.end method
