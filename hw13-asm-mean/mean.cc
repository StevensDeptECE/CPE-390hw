double mean(const double a[], int n) {
	double sum = 0;
	for (int i = 0; i < n; i++)
		sum += a[i];
	return sum / n; // type promotion
}
