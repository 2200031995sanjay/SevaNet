<%@ taglib uri="jakarta.tags.core" prefix="c" %>

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
    <link rel="stylesheet" href="style.css"> <link rel="icon" type="image/png" href="fevi.png">
    <style>
        /* Centering and styling the form */
        .form-container {
            width: 50%;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #f9f9f9;
        }

        h3 {
            text-align: center;
            color: #333;
        }

        .message {
            color: red;
            text-align: center;
        }

        table {
            width: 100%;
            margin: 0 auto;
        }

        td {
            padding: 10px;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            font-size: 14px;
            margin: 10px;
        }
    </style>
</head>

<body>
    <!-- Include Sidebar -->
    <div class="wrapper">
        <!-- Sidebar Section -->
        <aside id="sidebar">
            <div class="d-flex">
                <button class="toggle-btn" type="button">
                    <i class="lni lni-grid-alt"></i>
                </button>
                <div class="sidebar-logo">
                    <a href="">SevaNet</a>
                </div>
            </div>
            <ul class="sidebar-nav">
                <li class="sidebar-item">
                    <a href="/" class="sidebar-link">
                        <i class="lni lni-home"></i>
                        <span>Home</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="adminlogin" class="sidebar-link">
                        <i class="lni lni-key"></i>
                        <span>Admin Login</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="politicianlogin" class="sidebar-link">
                        <i class="lni lni-user"></i>
                        <span>Politician Login</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="departmentlogin" class="sidebar-link">
                        <i class="lni lni-briefcase"></i>
                        <span>Department Login</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="citizenlogin" class="sidebar-link">
                        <i class="lni lni-users"></i>
                        <span>Citizen Login</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="citizenreg" class="sidebar-link">
                        <i class="lni lni-pencil"></i>
                        <span>Citizen Registration</span>
                    </a>
                </li>
            </ul>
        </aside>

        <!-- Main Content Section -->
        <div class="main p-3">
            <div class="text-center">
                <h3><u>Citizen Registration</u></h3>
                <div class="form-container">
                    <form method="post" action="insertcitizen">
                        <table>
                            <tr>
                                <td><label for="firstName">First Name</label></td>
                                <td><input type="text" id="firstName" name="firstName" required /></td>
                            </tr>
                            <tr>
                                <td><label for="lastName">Last Name</label></td>
                                <td><input type="text" id="lastName" name="lastName" required /></td>
                            </tr>
                            <tr>
                                <td><label for="email">Email</label></td>
                                <td><input type="email" id="email" name="email" required /></td>
                            </tr>
                            <tr>
                                <td><label for="password">Password</label></td>
                                <td><input type="password" id="password" name="password" required /></td>
                            </tr>
                            <tr>
                                <td><label for="address">Address</label></td>
                                <td><input type="text" id="address" name="address" required /></td>
                            </tr>
                            <tr>
                                <td><label for="contact">Contact</label></td>
                                <td><input type="number" id="contact" name="contact" required /></td>
                            </tr>
                            <tr>
                                <td><label for="aadharNumber">Aadhar Number</label></td>
                                <td><input type="text" id="aadharNumber" name="aadharNumber" required /></td>
                            </tr>
                            <tr>
                                <td><label for="constituency">Select Constituency</label></td>
                                <td>
                                    <select id="constituency" name="constituency" required>
                                        <option value="">---Select Constituency---</option>
                                        <!-- Loop through constituencies and display them -->
                                        <c:forEach var="constituency" items="${constituencies}">
                                            <option value="${constituency.name}">${constituency.name}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="gender">Gender</label></td>
                                <td>
                                    <input type="radio" id="male" name="gender" value="MALE" required />
                                    <label for="male">Male</label>
                                    <input type="radio" id="female" name="gender" value="FEMALE" required />
                                    <label for="female">Female</label>
                                    <input type="radio" id="others" name="gender" value="OTHERS" required />
                                    <label for="others">Others</label>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="maritalStatus">Marital Status</label></td>
                                <td>
                                    <select id="maritalStatus" name="maritalStatus" required>
                                        <option value="">---Select Marital Status---</option>
                                        <option value="Single">Single</option>
                                        <option value="Married">Married</option>
                                        <option value="Divorced">Divorced</option>
                                        <option value="Widowed">Widowed</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="dateOfBirth">Date of Birth</label></td>
                                <td><input type="date" id="dateOfBirth" name="dateOfBirth" required /></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="button-container">
                                    <input type="submit" value="Register" />
                                    <input type="reset" value="Clear" />
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <script src="script.js"></script>
    </body>

</html>
