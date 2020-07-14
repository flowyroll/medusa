.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x95e9, %rsi
lea addresses_A_ht+0x174e9, %rdi
clflush (%rdi)
sub %rbp, %rbp
mov $90, %rcx
rep movsw
nop
nop
nop
nop
nop
add $27798, %r13
lea addresses_UC_ht+0x8777, %rsi
lea addresses_WT_ht+0x1d199, %rdi
clflush (%rsi)
mfence
mov $50, %rcx
rep movsq
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x17f29, %rcx
nop
add $63194, %r8
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rsi
nop
add %r11, %r11
lea addresses_A_ht+0x14e9, %rsi
lea addresses_normal_ht+0x85f3, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $32, %rcx
rep movsl
sub %rbp, %rbp
lea addresses_WT_ht+0xec49, %rsi
lea addresses_WC_ht+0x18a61, %rdi
nop
nop
nop
add $24453, %r12
mov $44, %rcx
rep movsb
xor %r8, %r8
lea addresses_WT_ht+0x1c4e9, %rbp
nop
nop
nop
nop
cmp $26323, %r8
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm2
vpextrq $0, %xmm2, %rdi
xor %rcx, %rcx
lea addresses_normal_ht+0x54e9, %rsi
lea addresses_WT_ht+0x2f51, %rdi
nop
nop
and %r13, %r13
mov $60, %rcx
rep movsb
nop
xor $21579, %r13
lea addresses_D_ht+0x16ee7, %rdi
nop
add $14298, %r12
movl $0x61626364, (%rdi)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x14029, %r11
nop
nop
add $12169, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r11)
nop
add %r11, %r11
lea addresses_normal_ht+0xfb01, %r12
nop
nop
nop
nop
nop
xor $43683, %r8
vmovups (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xdae9, %rsi
lea addresses_WC+0x12eca, %rdi
add %r12, %r12
mov $21, %rcx
rep movsb
nop
nop
nop
nop
and $34723, %rbx

// Load
lea addresses_PSE+0x12ce9, %r15
nop
and $57846, %rcx
vmovups (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
sub $15611, %r9

// Store
lea addresses_normal+0xa269, %rsi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
xor $18082, %rsi

// REPMOV
lea addresses_PSE+0x62c9, %rsi
lea addresses_A+0x124e9, %rdi
nop
nop
nop
inc %rax
mov $73, %rcx
rep movsl
nop
nop
and %rax, %rax

// Store
lea addresses_D+0xf429, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%rbx)
nop
nop
xor %rcx, %rcx

// REPMOV
lea addresses_WT+0x8e9, %rsi
lea addresses_normal+0x122d5, %rdi
nop
nop
nop
nop
xor $22055, %rax
mov $53, %rcx
rep movsw
dec %rbx

// REPMOV
lea addresses_US+0x1b8e9, %rsi
mov $0x609, %rdi
nop
nop
mfence
mov $51, %rcx
rep movsw
nop
nop
nop
cmp %r15, %r15

// Store
mov $0xa32, %rbx
nop
add $10510, %r15
mov $0x5152535455565758, %rax
movq %rax, (%rbx)
cmp $33966, %rcx

// Load
lea addresses_D+0x369, %rdi
dec %rbx
mov (%rdi), %r12w
nop
sub $2264, %r15

// Store
lea addresses_A+0x118a9, %r12
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x51, (%r12)
nop
add $15164, %rcx

// Faulty Load
lea addresses_RW+0x1a4e9, %rsi
nop
nop
nop
and $57578, %rcx
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'32': 8}
32 32 32 32 32 32 32 32
*/
