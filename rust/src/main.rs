use std::{
    fs::File,
    io::{BufRead, BufReader, BufWriter, Write},
    os::unix::io::FromRawFd,
};

fn main() {
    // prepare stuff for faster IO
    let mut s = String::new();
    let stdin = unsafe { File::from_raw_fd(0) };
    let stdout = unsafe { File::from_raw_fd(1) };
    let mut reader = BufReader::new(stdin);
    let mut writer = BufWriter::new(stdout);

    // read line
    reader.read_line(&mut s).expect("Failed to read from stdin");

    // parse string
    let nums: Vec<usize> = s
        .split(' ')
        .map(|substr| substr.parse().expect("Failed to convert &str to usize"))
        .collect();

    // print sum of nums
    writer
        .write_fmt(format_args!(
            "{} = {}\n",
            s.replace(' ', " + "),
            nums.iter().sum::<usize>()
        ))
        .expect("Failed to write to stdout");
}
