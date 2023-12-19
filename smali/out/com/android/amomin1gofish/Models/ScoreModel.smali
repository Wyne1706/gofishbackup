.class public Lcom/android/amomin1gofish/Models/ScoreModel;
.super Ljava/lang/Object;
.source "ScoreModel.java"


# instance fields
.field name:Ljava/lang/String;

.field score:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "score"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/amomin1gofish/Models/ScoreModel;->name:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/android/amomin1gofish/Models/ScoreModel;->score:I

    .line 29
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/android/amomin1gofish/Models/ScoreModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/android/amomin1gofish/Models/ScoreModel;->score:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/android/amomin1gofish/Models/ScoreModel;->name:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setScore(I)V
    .registers 2
    .param p1, "score"    # I

    .line 19
    iput p1, p0, Lcom/android/amomin1gofish/Models/ScoreModel;->score:I

    .line 20
    return-void
.end method
