from django.shortcuts import render
from .models import League, Team, Match, Pari, User
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
import datetime
import requests


# Create your views here.
def initialise_db():
    league = League.objects.filter(id=4328)
    if not league.exists():
        response = requests.get("https://www.thesportsdb.com/api/v1/json/1/all_leagues.php")
        league = response.json()
        leagues = league['leagues']
        for element in leagues:
            if element['strLeague'] == 'English Premier League':
                league = League.objects.create(id=element['idLeague'], name=element['strLeague'])
                break
    else:
        league = league[0]
    teams = Team.objects.filter(league__id=4328)
    if not teams.exists():
        response = requests.get("https://www.thesportsdb.com/api/v1/json/1/lookup_all_teams.php?id=4328")
        teams = response.json()
        teams = teams['teams']
        for element in teams:
            if element['idLeague'] == '4328':
                teams = Team.objects.create(
                    id=element['idTeam'],
                    name=element['strTeam'],
                    emblem=element['strTeamBadge'],
                    league=league
                )
    matchs = Match.objects.all()
    if not matchs.exists():
        response = requests.get("https://www.thesportsdb.com/api/v1/json/1/eventsseason.php?id=4328&s=1920")
        matchs = response.json()
        matchs = matchs['events']
        for element in matchs:
            if element['idLeague'] == '4328':
                da = element['strDate'].split("/")
                aux = ["20" + da[2], da[1], da[0]]
                da = "-".join(aux)
                match = Match.objects.create(
                    id=element['idEvent'],
                    home_team_id=element['idHomeTeam'],
                    away_team_id=element['idAwayTeam'],
                    date_match=da,
                    time_match=element['strTime'],
                )


def index(request):
    initialise_db()
    old_ma = Match.objects.filter(date_match__lt=datetime.date.today()).order_by('-date_match')[:4]
    next_ma = Match.objects.filter(date_match__gt=datetime.date.today()).order_by('date_match')[:4]
    today_ma = Match.objects.filter(date_match=datetime.date.today()).order_by('time_match')[:4]
    context = {
        'old_ma' : old_ma,
        'today_ma': today_ma,
        'next_ma': next_ma
    }
    return render(request, 'pari/index.html', context)


def listing(request):
    ma_list = Match.objects.all().order_by('date_match')
    paginator = Paginator(ma_list, 4)
    page = request.GET.get('page')
    try:
        matchs = paginator.page(page)
    except PageNotAnInteger:
        matchs = paginator.page(1)
    except EmptyPage:
        matchs = paginator.page(paginator.num_pages)
    context = {
        'matchs':matchs,
        'paginate': True
    }
    return render(request, 'pari/listing.html', context)