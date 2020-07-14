.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x100ca, %r11
nop
nop
nop
nop
add %r9, %r9
mov (%r11), %dx
add $22321, %r13
lea addresses_A_ht+0x2e1a, %r11
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%r11)
sub $2823, %r14
lea addresses_normal_ht+0x1e4ba, %rdx
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%rdx)
xor %r13, %r13
lea addresses_WC_ht+0xb54c, %r13
nop
nop
nop
nop
sub %rdx, %rdx
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
nop
nop
xor $15210, %r11
lea addresses_A_ht+0x170ea, %rsi
lea addresses_normal_ht+0x1837a, %rdi
nop
sub $51008, %rdx
mov $73, %rcx
rep movsl
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x124da, %r13
nop
nop
nop
nop
sub %rdi, %rdi
movb (%r13), %cl
sub %rsi, %rsi
lea addresses_WT_ht+0xb572, %rsi
lea addresses_UC_ht+0x127ba, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r13, %r13
mov $118, %rcx
rep movsb
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x60ba, %r13
clflush (%r13)
nop
dec %rdi
movw $0x6162, (%r13)
nop
nop
nop
nop
and $53672, %rdi
lea addresses_UC_ht+0x120ba, %rcx
inc %r13
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
xor $63439, %r11
lea addresses_UC_ht+0x6f3a, %r14
cmp %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r14)
nop
xor %rcx, %rcx
lea addresses_A_ht+0xe0ba, %rdx
nop
add %r9, %r9
movb $0x61, (%rdx)
nop
xor %r11, %r11
lea addresses_A_ht+0x5ba2, %rsi
lea addresses_WC_ht+0x186a, %rdi
nop
nop
nop
xor $28098, %r9
mov $49, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $51486, %rsi
lea addresses_UC_ht+0x126ba, %r11
nop
nop
add $31668, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x3bca, %rsi
lea addresses_WC_ht+0x1acba, %rdi
nop
cmp %rdx, %rdx
mov $44, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x1015c, %rcx
clflush (%rcx)
nop
nop
add $64481, %r13
movl $0x61626364, (%rcx)
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x1bf3a, %rbx
clflush (%rbx)
nop
nop
nop
nop
sub $3108, %r13
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
nop
sub $38593, %r11

// Store
mov $0x8ba, %rcx
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_RW+0x1e0ba, %rsi
nop
nop
dec %r13
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %rbp
nop
cmp %rsi, %rsi

// Store
lea addresses_D+0xc20a, %r13
cmp %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%r13)
nop
and $33822, %rbp

// Store
lea addresses_RW+0x1e0ba, %rbx
nop
nop
dec %r13
movw $0x5152, (%rbx)
nop
nop
add $30056, %r11

// Store
mov $0x6e8df00000008ba, %r11
nop
nop
nop
nop
sub $48334, %r15
movw $0x5152, (%r11)
inc %rsi

// REPMOV
lea addresses_WC+0x97ba, %rsi
lea addresses_normal+0x118ba, %rdi
nop
nop
nop
cmp $59707, %r11
mov $3, %rcx
rep movsw
nop
nop
nop
nop
add $60578, %rsi

// Load
lea addresses_A+0xb7f2, %r13
nop
dec %rdi
movb (%r13), %bl
nop
nop
nop
nop
nop
xor $23889, %rdi

// REPMOV
lea addresses_RW+0x94ba, %rsi
lea addresses_WT+0x36ba, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $41114, %rbx
mov $93, %rcx
rep movsb
nop
xor %r11, %r11

// Store
lea addresses_US+0x170e2, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
and %rbp, %rbp

// Load
lea addresses_normal+0x16822, %rbx
nop
xor %rcx, %rcx
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
nop
sub %rdi, %rdi

// Store
lea addresses_A+0xf328, %rdi
nop
nop
cmp %rbp, %rbp
movl $0x51525354, (%rdi)
nop
lfence

// Store
mov $0x3929e10000000c52, %rdi
nop
nop
dec %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
dec %r11

// Store
lea addresses_UC+0xb8ba, %rbx
nop
nop
nop
and %r11, %r11
movb $0x51, (%rbx)
nop
nop
xor $413, %rcx

// Store
lea addresses_A+0xc0ba, %r11
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_RW+0x1e0ba, %rbx
add $30596, %rcx
mov (%rbx), %esi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'c5': 1}
c5
*/
