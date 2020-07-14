.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1923e, %r11
nop
nop
nop
nop
xor $2793, %rcx
mov (%r11), %r12w
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0xea3e, %rsi
nop
xor %r9, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rsi)
nop
and %r9, %r9
lea addresses_WC_ht+0x15f3e, %rsi
lea addresses_D_ht+0x571e, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r12, %r12
mov $56, %rcx
rep movsw
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x18a3e, %rsi
lea addresses_D_ht+0x1323e, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $84, %rcx
rep movsw
nop
nop
and $31825, %r12
lea addresses_D_ht+0x1cdae, %r12
nop
nop
nop
nop
add %rcx, %rcx
mov (%r12), %r11d
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xe43e, %rbx
nop
sub %r9, %r9
movw $0x6162, (%rbx)
and %rsi, %rsi
lea addresses_normal_ht+0x8fea, %rdi
nop
dec %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
xor $51705, %rcx
lea addresses_WT_ht+0x13d3e, %r11
nop
nop
nop
mfence
movb $0x61, (%r11)
nop
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x1563e, %rsi
lea addresses_A_ht+0x1482, %rdi
nop
nop
nop
sub $30660, %r12
mov $67, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1bb7e, %rsi
lea addresses_A_ht+0x1338e, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $18, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x106a6, %r12
nop
nop
mfence
movups (%r12), %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
nop
nop
nop
and $5791, %rbx
lea addresses_normal_ht+0x5ff2, %rdi
nop
and %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rdi)
nop
sub %r9, %r9
lea addresses_UC_ht+0x1c5be, %r11
nop
add %rbp, %rbp
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0xba3e, %rsi
lea addresses_normal_ht+0x573e, %rdi
nop
sub %r9, %r9
mov $40, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdx

// Store
lea addresses_US+0xe33e, %r13
clflush (%r13)
nop
sub %rcx, %rcx
movb $0x51, (%r13)
nop
nop
dec %rcx

// Store
lea addresses_D+0x5d3e, %rdx
clflush (%rdx)
nop
nop
nop
add $6817, %rcx
movl $0x51525354, (%rdx)
and $37534, %rcx

// Load
mov $0x72af790000000cf4, %r14
nop
nop
nop
nop
cmp %r10, %r10
mov (%r14), %r9w
nop
nop
nop
sub $20704, %r14

// Load
lea addresses_WT+0x8d7e, %r10
nop
nop
nop
nop
sub $17949, %r11
movb (%r10), %r14b
sub $44368, %r11

// Store
lea addresses_normal+0x9b3e, %r10
nop
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%r10)
nop
nop
nop
nop
cmp $49737, %r9

// Load
lea addresses_RW+0x1eb92, %r11
nop
nop
nop
nop
nop
xor %r14, %r14
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
nop
and $2564, %rdx

// Store
mov $0xe3e, %r9
clflush (%r9)
nop
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%r9)
nop
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_US+0x23e, %r9
nop
nop
nop
sub %r11, %r11
movups (%r9), %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'00': 133, '45': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
