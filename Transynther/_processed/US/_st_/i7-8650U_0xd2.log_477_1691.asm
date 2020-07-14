.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x13e6e, %rsi
lea addresses_A_ht+0xca31, %rdi
nop
cmp %r11, %r11
mov $125, %rcx
rep movsw
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xc431, %rax
nop
nop
nop
dec %rbx
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0xb631, %rbx
nop
xor $10068, %rax
movb (%rbx), %r11b
nop
nop
xor $59069, %rbx
lea addresses_WT_ht+0xb91, %rax
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0xf631, %r11
dec %rdi
mov (%r11), %eax
nop
nop
cmp $46932, %rax
lea addresses_WC_ht+0x1e831, %rdi
nop
add %rcx, %rcx
mov (%rdi), %r14w
nop
and %rcx, %rcx
lea addresses_normal_ht+0xda09, %r11
nop
add %rsi, %rsi
mov (%r11), %rbx
sub $56045, %r11
lea addresses_UC_ht+0x6c99, %rsi
lea addresses_WT_ht+0x75d3, %rdi
nop
nop
xor $36786, %r14
mov $18, %rcx
rep movsw
nop
nop
xor $47137, %r11
lea addresses_WC_ht+0xcb31, %rdi
clflush (%rdi)
nop
nop
inc %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm0, (%rdi)
nop
nop
nop
nop
nop
xor $33109, %rbx
lea addresses_UC_ht+0xb631, %rsi
lea addresses_UC_ht+0x12631, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $75, %rcx
rep movsq
xor $46082, %r11
lea addresses_D_ht+0x18a31, %rsi
lea addresses_normal_ht+0x1a059, %rdi
nop
sub $15488, %r15
mov $35, %rcx
rep movsb
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x9e31, %r15
nop
and %rsi, %rsi
movb $0x61, (%r15)
nop
nop
nop
nop
and $12669, %rsi
lea addresses_WC_ht+0x5631, %r11
nop
nop
nop
xor $48568, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
nop
inc %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rdi
push %rdx

// Load
lea addresses_UC+0x1a771, %r10
nop
cmp $27090, %rbp
movups (%r10), %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
inc %r10

// Store
lea addresses_RW+0x1e31, %rbp
nop
nop
nop
nop
nop
and %r13, %r13
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
dec %rbp

// Faulty Load
lea addresses_US+0x16e31, %rbp
nop
dec %rdx
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'52': 477}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
