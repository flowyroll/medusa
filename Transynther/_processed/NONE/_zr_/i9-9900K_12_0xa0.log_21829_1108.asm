.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xa506, %rsi
lea addresses_normal_ht+0xb77, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $102, %rcx
rep movsl
nop
nop
nop
nop
sub $46127, %rbp
lea addresses_WT_ht+0x1d2e5, %rcx
clflush (%rcx)
nop
nop
dec %r13
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x4986, %rsi
lea addresses_UC_ht+0x21a6, %rdi
nop
nop
inc %r8
mov $127, %rcx
rep movsb
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x131a6, %r8
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%r8)
nop
dec %rbp
lea addresses_UC_ht+0x13bd6, %r8
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r8)
nop
add %r8, %r8
lea addresses_WC_ht+0x1b346, %rsi
lea addresses_normal_ht+0x1c786, %rdi
nop
nop
xor $4458, %r14
mov $44, %rcx
rep movsb
xor $12775, %rsi
lea addresses_UC_ht+0x3df4, %r14
nop
nop
nop
nop
xor %rcx, %rcx
movb (%r14), %r8b
cmp %rbp, %rbp
lea addresses_D_ht+0x16906, %rbp
nop
nop
sub $48055, %r13
movw $0x6162, (%rbp)
and %rbp, %rbp
lea addresses_UC_ht+0xa906, %rsi
lea addresses_WT_ht+0x789f, %rdi
and %r13, %r13
mov $86, %rcx
rep movsl
nop
xor $53018, %rbp
lea addresses_D_ht+0x14b7a, %r8
nop
nop
cmp %rsi, %rsi
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
sub %r13, %r13
lea addresses_WT_ht+0x8283, %rsi
nop
nop
nop
sub $10549, %rbx
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x14906, %r13
clflush (%r13)
nop
nop
nop
nop
nop
cmp $23176, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
add $46510, %r8
lea addresses_WT_ht+0x10e06, %rsi
nop
nop
cmp $62800, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x2506, %rcx
nop
nop
cmp $63444, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rsi

// Store
lea addresses_WT+0x8906, %r12
sub $34171, %r14
movw $0x5152, (%r12)
nop
and %r14, %r14

// Store
lea addresses_D+0xcff6, %r15
nop
and $19152, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
xor $34219, %r12

// Load
lea addresses_WC+0x9d06, %r12
nop
nop
nop
nop
dec %r11
mov (%r12), %ebx
nop
sub %r13, %r13

// Faulty Load
lea addresses_UC+0x11106, %r15
nop
add $329, %r11
mov (%r15), %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
