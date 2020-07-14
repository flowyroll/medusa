.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a0b1, %rcx
nop
xor $8908, %rbp
mov (%rcx), %r9d
add %rax, %rax
lea addresses_A_ht+0x2171, %r10
clflush (%r10)
nop
nop
nop
and %r8, %r8
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
cmp $9664, %rbp
lea addresses_WT_ht+0x1bbd1, %r10
nop
nop
nop
nop
nop
sub %rbp, %rbp
movl $0x61626364, (%r10)
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0xe2b1, %rdi
cmp $12297, %r8
movb (%rdi), %cl
nop
xor %rax, %rax
lea addresses_WC_ht+0x16131, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
movw $0x6162, (%rdi)
nop
add %rdi, %rdi
lea addresses_UC_ht+0x16291, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r10, %r10
mov (%rdi), %rax
and %rcx, %rcx
lea addresses_normal_ht+0x106b1, %rdi
nop
nop
nop
dec %r10
mov (%rdi), %r8w
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x14d49, %rsi
lea addresses_normal_ht+0x86b1, %rdi
nop
nop
nop
nop
nop
lfence
mov $92, %rcx
rep movsb
nop
and %rbp, %rbp
lea addresses_A_ht+0x7bb1, %rsi
nop
nop
nop
nop
nop
and $10078, %rcx
mov (%rsi), %r8d
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0xc7e1, %rdi
nop
nop
nop
nop
and $54170, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
xor $40677, %r8
lea addresses_WC_ht+0x1b1b1, %rsi
lea addresses_D_ht+0xef81, %rdi
clflush (%rsi)
and $25304, %r9
mov $124, %rcx
rep movsb
nop
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0xd7d, %r9
nop
nop
nop
nop
nop
inc %rsi
movb $0x61, (%r9)
sub %r8, %r8
lea addresses_WT_ht+0x156b1, %rdi
nop
nop
and %rbp, %rbp
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x1a8b1, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub %rdi, %rdi
mov (%rcx), %r10d
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0xafb1, %r8
nop
nop
add $43572, %r11
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
mov $0xab1, %r8
nop
nop
and $34179, %rax
movl $0x51525354, (%r8)
nop
nop
and %rdi, %rdi

// Store
mov $0x374d3c0000000ab1, %rdi
clflush (%rdi)
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
dec %r9

// Store
lea addresses_WC+0x6dd5, %rcx
nop
nop
nop
nop
nop
sub %r9, %r9
movl $0x51525354, (%rcx)
add %rdi, %rdi

// Load
lea addresses_US+0x4eb1, %rax
nop
nop
nop
nop
nop
sub $24314, %r9
mov (%rax), %r11

// Exception!!!
mov (0), %r11
nop
and $28381, %r9

// Faulty Load
mov $0x374d3c0000000ab1, %r8
cmp %r11, %r11
mov (%r8), %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'58': 7}
58 58 58 58 58 58 58
*/
