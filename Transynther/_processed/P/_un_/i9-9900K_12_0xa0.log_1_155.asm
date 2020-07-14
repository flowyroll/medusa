.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x15e5a, %rax
nop
add $65514, %r10
mov (%rax), %rdi
nop
nop
dec %rsi
lea addresses_UC_ht+0x638a, %rbp
nop
nop
xor $62205, %r8
movb $0x61, (%rbp)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0xeb9a, %r10
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, (%r10)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0xc048, %rdi
nop
sub %r8, %r8
mov (%rdi), %rax
nop
nop
nop
nop
nop
cmp $6041, %rsi
lea addresses_normal_ht+0x2f9a, %rsi
lea addresses_A_ht+0xa592, %rdi
nop
nop
nop
cmp $58189, %r8
mov $115, %rcx
rep movsl
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x926e, %rsi
lea addresses_D_ht+0x1160e, %rdi
nop
nop
xor %r8, %r8
mov $84, %rcx
rep movsq
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x1c44a, %rsi
lea addresses_UC_ht+0x993a, %rdi
nop
nop
nop
cmp %r10, %r10
mov $96, %rcx
rep movsl
nop
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x1d9da, %rdi
nop
nop
cmp %rcx, %rcx
mov (%rdi), %ax
and $53903, %rbx
lea addresses_UC_ht+0x19c3c, %rsi
lea addresses_UC_ht+0x1639a, %rdi
nop
nop
cmp %rax, %rax
mov $13, %rcx
rep movsl
nop
nop
lfence
lea addresses_normal_ht+0xc39a, %rdi
cmp %r8, %r8
mov (%rdi), %rbp
nop
and %rax, %rax
lea addresses_WC_ht+0x1065a, %rsi
lea addresses_D_ht+0xa5ac, %rdi
and $61460, %rax
mov $108, %rcx
rep movsl
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x1439a, %r10
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r10)
add %rax, %rax
lea addresses_WT_ht+0x325a, %rsi
lea addresses_WT_ht+0xf963, %rdi
nop
nop
and $9745, %r8
mov $27, %rcx
rep movsb
nop
nop
nop
xor $2877, %rbx
lea addresses_A_ht+0x7c1a, %rsi
lea addresses_WC_ht+0x11358, %rdi
nop
nop
nop
nop
nop
add $36346, %rbp
mov $24, %rcx
rep movsl
nop
nop
nop
add $45799, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x18a48, %r9
nop
nop
nop
nop
nop
inc %rsi
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
sub $53410, %r13

// Store
lea addresses_RW+0x457a, %rbx
nop
nop
sub $36983, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_normal+0x1999a, %r14
nop
nop
and $16602, %rbx
movb $0x51, (%r14)
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_D+0x11e9a, %r9
nop
nop
nop
nop
xor %r14, %r14
movb $0x51, (%r9)
xor $12587, %rsi

// REPMOV
lea addresses_RW+0x59a, %rsi
mov $0x1e370c00000006aa, %rdi
xor $27697, %rbx
mov $47, %rcx
rep movsl
sub %r15, %r15

// Store
lea addresses_WT+0x95da, %rdi
clflush (%rdi)
nop
nop
cmp %r15, %r15
movb $0x51, (%rdi)
nop
nop
nop
nop
sub %r13, %r13

// Store
mov $0x8da, %rbp
nop
nop
nop
nop
nop
cmp $39940, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
nop
add $6786, %rcx

// Load
lea addresses_A+0x19f9a, %rsi
nop
nop
xor %rbx, %rbx
mov (%rsi), %r9w
nop
nop
and %rsi, %rsi

// Store
mov $0x91a, %rcx
nop
nop
xor $8066, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
cmp $41592, %r9

// Faulty Load
mov $0xb9a, %rdi
nop
nop
add $54939, %r14
movb (%rdi), %r9b
lea oracles, %r9
and $0xff, %r9
shlq $12, %r9
mov (%r9,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_P', 'AVXalign': True, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'8d': 1}
8d
*/
