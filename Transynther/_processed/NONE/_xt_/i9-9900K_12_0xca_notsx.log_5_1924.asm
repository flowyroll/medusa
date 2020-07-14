.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x10940, %rsi
lea addresses_normal+0x15d40, %rdi
xor $58576, %r8
mov $34, %rcx
rep movsl
cmp %r14, %r14

// Load
mov $0x5f33270000000e58, %r11
nop
nop
nop
nop
xor %rbp, %rbp
mov (%r11), %cx
nop
nop
nop
nop
nop
xor $51031, %r11

// Store
lea addresses_D+0x5a60, %r14
nop
nop
nop
nop
add %rbp, %rbp
movb $0x51, (%r14)
nop
nop
nop
nop
inc %rcx

// Load
lea addresses_normal+0x1dc50, %r11
nop
dec %rcx
movups (%r11), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
cmp $56334, %rdi

// Load
lea addresses_PSE+0x13540, %rdi
nop
dec %rsi
mov (%rdi), %r8
nop
nop
nop
add %r11, %r11

// Store
lea addresses_D+0x7d40, %rsi
xor $43101, %r11
movb $0x51, (%rsi)
xor %r11, %r11

// Store
lea addresses_normal+0xb480, %r8
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
cmp $35046, %rcx

// Store
mov $0x7a89af0000000ac8, %rdi
nop
nop
nop
nop
xor $62425, %r11
movb $0x51, (%rdi)
cmp $52678, %rbp

// Store
lea addresses_RW+0x124e0, %rsi
xor $13227, %rbp
movb $0x51, (%rsi)
add %r14, %r14

// Faulty Load
lea addresses_RW+0x1a140, %rdi
clflush (%rdi)
nop
nop
xor %rsi, %rsi
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r8
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'32': 5}
32 32 32 32 32
*/
