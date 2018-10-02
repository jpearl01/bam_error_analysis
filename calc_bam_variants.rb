#!/usr/bin/env ruby

require 'bio-samtools'
require 'optimist'

opts = Optimist::options do
  version "cal_bam_variants v0.01 (c) 2018 Josh Earl"
  opt :b, "BAM file", type: :string, required: true
  opt :r, "Indexed reference", type: :string, required: true
end

bam = Bio::DB::Sam.new(bam: opts.b, fasta: opts.r)
#bam.index()


bam.each do |aln|
	puts aln.seq.length
	
end


puts bam.flag_stats()