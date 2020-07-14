.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rax
push %rbx
lea addresses_WT_ht+0x1199d, %r15
sub $57999, %r9
mov (%r15), %r11d
nop
nop
nop
nop
xor $10362, %rbx
lea addresses_WC_ht+0x11c5d, %rbx
nop
and $14405, %r9
movw $0x6162, (%rbx)
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x979d, %rax
nop
nop
nop
nop
cmp %r11, %r11
mov (%rax), %r13d
xor %rbx, %rbx
lea addresses_A_ht+0x839d, %rbx
nop
nop
nop
nop
lfence
mov (%rbx), %r11
nop
add %rax, %rax
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x19f9d, %rbp
nop
inc %r9
movl $0x51525354, (%rbp)
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_WT+0x1eb9d, %r12
nop
cmp $19277, %rcx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Load
lea addresses_D+0x401d, %r12
nop
nop
nop
cmp $9391, %rbx
movb (%r12), %r9b
nop
nop
nop
nop
add $42456, %rcx

// REPMOV
lea addresses_RW+0x1e39d, %rsi
lea addresses_normal+0x1471d, %rdi
nop
nop
nop
nop
nop
xor $13798, %r9
mov $36, %rcx
rep movsw
nop
nop
cmp $26963, %rsi

// Load
lea addresses_WT+0x1eb9d, %rbp
nop
nop
nop
nop
nop
cmp $59281, %rsi
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %r12
nop
nop
xor $16477, %r12

// Store
lea addresses_RW+0x1f09d, %rdi
nop
add $46903, %r12
movw $0x5152, (%rdi)
add %r12, %r12

// Store
lea addresses_PSE+0x13f89, %r12
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r12)
nop
cmp $24265, %r12

// Load
lea addresses_WT+0x1eb9d, %r9
nop
nop
nop
nop
add %rsi, %rsi
mov (%r9), %rcx
nop
nop
nop
nop
inc %r11

// Faulty Load
lea addresses_WT+0x1eb9d, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'39': 6}
39 39 39 39 39 39
*/
