# ✈️ Flight Booking Behavior & Analytics

This project analyzes flight booking patterns using SQL. It explores customer behavior, trip preferences, and the influence of optional services (like baggage or meals) on booking completion.

---

## 🧾 Table Schema

| Column Name             | Description                                             |
|-------------------------|---------------------------------------------------------|
| `num_passengers`        | Number of passengers in booking                         |
| `sales_channel`         | Booking source (e.g. Online, Travel Agent)              |
| `trip_type`             | Type of trip: One Way, Round Trip, Circle Trip          |
| `purchase_lead`         | Days between booking and travel                         |
| `length_of_stay`        | Duration of stay at destination                         |
| `flight_hour`           | Hour of flight departure                                |
| `flight_day`            | Day of the week of departure                            |
| `route`                 | Route in 'Origin -> Destination' format                 |
| `booking_origin`        | Country where booking was made                          |
| `wants_extra_baggage`   | Customer selected extra baggage? (TRUE/FALSE)           |
| `wants_preferred_seat`  | Customer selected a preferred seat? (TRUE/FALSE)        |
| `wants_in_flight_meals` | Customer selected in-flight meals? (TRUE/FALSE)         |
| `flight_duration`       | Total flight duration in hours                          |
| `booking_complete`      | Whether booking was completed (TRUE/FALSE)              |

---

## 🛠️ Files

- `analytics_queries.sql` – Sample insights and queries

---

## 📈 Insights Performed

- Completion rate by sales channel and trip type
- Customer preferences (seat, meals, baggage)
- Time-based trends (hour, day of week, purchase lead)
- Route popularity and average stay duration

---

## ⚙️ How to Run

- Run `analytics_queries.sql` for insights using SQL Server Management Studio or your preferred SQL environment.

---

## 🔮 Future Work

### 📊 Power BI Dashboard
- Develop an interactive dashboard to visualize booking trends, passenger behaviors, and route performance.
- Use slicers and filters to drill down by trip type, booking origin, or optional services.
- Create KPIs such as Booking Conversion Rate, Top Routes, and Booking Completion Heatmaps.

### 🤖 Machine Learning Model
- Build a classification model (e.g. Logistic Regression, Random Forest) to **predict whether a booking will be completed**.
- Use features like `trip_type`, `purchase_lead`, and `wants_preferred_seat` to train the model.
- Tools: Python (Pandas, scikit-learn), Jupyter Notebook
- Outcome: Predictive insights to guide marketing or UI/UX enhancements.

---

## 📬 Feedback

Feel free to fork the repo or submit issues for improvements!

> Note: This project uses simulated data for educational purposes.
