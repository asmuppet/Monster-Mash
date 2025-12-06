function clicks_per_second(clicks, elapsed_time) {
    if (elapsed_time > 0) {
        return clicks / elapsed_time;
    } else {
        return 0;
    }
}
