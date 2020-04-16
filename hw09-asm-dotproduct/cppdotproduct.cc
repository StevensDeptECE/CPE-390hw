double dot(double a[], double b[]) {
	return a[0] * b[0] + a[1]*b[1] + a[2]*b[2];
}

// not required for homework
// this would be for a variable sized vector
double dot2(double a[], double b[], int n) {
	double sum = 0;
	for (int i = 0; i < n; i++)
		sum += a[i] * b[i];
	return sum;
}
