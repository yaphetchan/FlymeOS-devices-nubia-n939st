.class Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 420
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 418
    iput-boolean v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    .line 421
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mContext:Landroid/content/Context;

    .line 422
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 423
    iput-boolean v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    .line 424
    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 445
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 450
    iget-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "query":Ljava/lang/String;
    new-instance v1, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionItem;

    invoke-direct {v1, v0}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionItem;-><init>(Ljava/lang/String;)V

    .line 455
    .end local v0    # "query":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 460
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 465
    iget-boolean v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    .line 466
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "this should only be called when the cursor is valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 469
    :cond_0
    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 470
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t move cursor to position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 475
    :cond_1
    if-nez p2, :cond_2

    .line 476
    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400de

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 481
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f0f0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 483
    .local v1, "query":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionItem;

    .line 484
    .local v0, "item":Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionItem;
    iget-object v3, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionItem;->query:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    return-object v2

    .line 478
    .end local v0    # "item":Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionItem;
    .end local v1    # "query":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 439
    :goto_0
    return-object v0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    .line 431
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    .line 432
    if-eqz p1, :cond_1

    .line 433
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 436
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->mDataValid:Z

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
