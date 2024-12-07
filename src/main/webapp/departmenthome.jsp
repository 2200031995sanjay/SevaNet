<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="com.klef.jfsd.springboot.sevanet.model.Department" %>
<%
Department dep = (Department) session.getAttribute("department");
if (dep == null) {
    response.sendRedirect("politiciansessionexpage");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SevaNet</title>
    <link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css"><link rel="icon" type="image/png" href="fevi.png">
     <style>
        /* Flexbox Layout for Pie Chart and Calendar */
        .overview-container {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 30px;
        }

        .statistics, .calendar-container {
            width: 48%; /* Adjust width to fit the layout */
            min-height: 300px;
        }

        .statistics {
            background-color: #f8f9fa;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        #overviewChart {
            width: 100%;
            height: 100%;
        }

        .calendar-container iframe {
            width: 100%;
            height: 100%;
            border: 0;
        }

        /* Other sections */
        .event-cards, .latest-news {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .event-card, .news-item {
            flex: 1;
            min-width: 250px;
            max-width: 300px;
            margin-bottom: 15px;
        }
        
        .event-card .card-body, .news-item img {
            padding: 15px;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <!-- Sidebar Section -->
        <aside id="sidebar">
            <div class="d-flex">
                <button class="toggle-btn" type="button">
                    <i class="lni lni-grid-alt"></i>
                </button>
                <div class="sidebar-logo">
                    <a href="departmenthome">SevaNet</a>
                </div>
            </div>
            <ul class="sidebar-nav">
                <!-- Sidebar Links from department navbar -->
                <li class="sidebar-item">
                    <a href="departmenthome" class="sidebar-link">
                        <i class="lni lni-home"></i>
                        <span>Home</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="assignedissuespage" class="sidebar-link">
                        <i class="lni lni-list"></i>
                        <span>Assigned Issues</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="departprofilepage" class="sidebar-link">
                        <i class="lni lni-user"></i>
                        <span>Profile</span>
                    </a>
                </li>
            </ul>
            <div class="sidebar-footer">
                <a href="departmentlogout" class="sidebar-link">
                    <i class="lni lni-exit"></i>
                    <span>Logout</span>
                </a>
            </div>
        </aside>

        <!-- Main Content Section -->
          <div class="main">
            <div class="username">
                <p align="right">Logged in as: <strong><%= dep.getName() %></strong></p>
                <h3 align="center">Welcome, <%= dep.getName() %></h3>
            </div>

            <!-- Overview Container: Pie Chart and Calendar -->
            <div class="overview-container">
                <!-- Pie Chart Section -->
                <div class="statistics">
                    <h4>Overview</h4>
                    <canvas id="overviewChart"></canvas>
                </div>
                <!-- Calendar Section -->
                <div class="calendar-container">
                    <h4>Calendar</h4>
                    <iframe src="https://calendar.google.com/calendar/embed?src=your_calendar_id&ctz=Asia%2FCalcutta"></iframe>
                </div>
            </div>

            <br>

            <!-- Political Events Section -->
            <h4 align="center">Political Events</h4>
            <div class="event-cards">
                <div class="event-card">
                    <div class="card">
                        <div class="card-header">
                            Event 1: National Policy Debate
                        </div>
                        <div class="card-body">
                            <p>This event is focused on the national policy debate between political parties.</p>
                            <a href="https://www.imf.org/" target="_blank" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
                <div class="event-card">
                    <div class="card">
                        <div class="card-header">
                            Event 2: State Assembly Elections
                        </div>
                        <div class="card-body">
                            <p>The upcoming state assembly elections will be held next month.</p>
                            <a href="https://eci.gov.in/" target="_blank" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
                <div class="event-card">
                    <div class="card">
                        <div class="card-header">
                            Event 3: Town Hall Meeting
                        </div>
                        <div class="card-body">
                            <p>Local leaders will discuss regional development strategies.</p>
                            <a href="https://www.mygov.in/" target="_blank" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
                <div class="event-card">
                    <div class="card">
                        <div class="card-header">
                            Event 4: International Economic Summit
                        </div>
                        <div class="card-body">
                            <p>Global economic leaders will debate economic policies for growth.</p>
                            <a href="https://www.imf.org/" target="_blank" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Latest News Section -->
            <h4 align="center">Latest News</h4>
            <div class="latest-news d-flex flex-wrap justify-content-center">
                <div class="news-item card text-center mx-2 my-2" style="width: 18rem;">
                    <img src="https://via.placeholder.com/40?text=NDTV" class="card-img-top mx-auto mt-3" alt="NDTV">
                    <div class="card-body">
                        <h5 class="card-title">NDTV</h5>
                        <p class="card-text">Get the latest updates on politics, economy, and society.</p>
                        <a href="https://www.ndtv.com" target="_blank" class="btn btn-primary">Visit NDTV</a>
                    </div>
                </div>
                <div class="news-item card text-center mx-2 my-2" style="width: 18rem;">
                    <img src="https://via.placeholder.com/40?text=TheHindu" class="card-img-top mx-auto mt-3" alt="The Hindu">
                    <div class="card-body">
                        <h5 class="card-title">The Hindu</h5>
                        <p class="card-text">Explore the latest news on national and international topics.</p>
                        <a href="https://www.thehindu.com" target="_blank" class="btn btn-primary">Visit The Hindu</a>
                    </div>
                </div>
                <div class="news-item card text-center mx-2 my-2" style="width: 18rem;">
                    <img src="https://via.placeholder.com/40?text=IndiaToday" class="card-img-top mx-auto mt-3" alt="India Today">
                    <div class="card-body">
                        <h5 class="card-title">India Today</h5>
                        <p class="card-text">Breaking news on current affairs and exclusive interviews.</p>
                        <a href="https://www.indiatoday.in" target="_blank" class="btn btn-primary">Visit India Today</a>
                    </div>
                </div>
                <!-- Add more news items here if needed -->
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="script.js"></script>
</body>
</html>
