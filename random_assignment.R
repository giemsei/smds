FSDS_exs = as.character(c(3.12, 3.18, 3.28, #add quotes to avoid stripping trailing zero if any
                          4.2, 4.4, 4.38, 4.44, 4.48,
                          5.2, 5.12, 5.16, 5.68))

books = rep("FSDS", length(FSDS_exs))

students = c()
set.seed(11) #I used the day, but we should use the sum of the days of birth
for (i in 1:3) {
  students = c(students, sample(c("Alessi", "Alessio", "Codega", "Musini")))
}

df = data.frame(student = students[1:length(books)],
                book = books,
                exercise = FSDS_exs)
df = df[order(df$student),]
rownames(df) = NULL
print(df)
