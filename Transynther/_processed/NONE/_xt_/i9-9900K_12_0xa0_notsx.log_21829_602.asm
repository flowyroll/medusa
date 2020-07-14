.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x73db, %rdx
nop
nop
nop
nop
add %rbp, %rbp
mov (%rdx), %r9w
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x63db, %r11
nop
nop
sub $11063, %rsi
movups (%r11), %xmm2
vpextrq $1, %xmm2, %rdi
and %r9, %r9
lea addresses_A_ht+0x179b7, %rsi
lea addresses_D_ht+0x1402b, %rdi
nop
nop
nop
nop
add $6726, %r11
mov $83, %rcx
rep movsb
nop
add %rsi, %rsi
lea addresses_A_ht+0x117fb, %rsi
lea addresses_WC_ht+0xd1db, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %rbx, %rbx
mov $76, %rcx
rep movsl
nop
xor $49510, %rdi
lea addresses_A_ht+0x18fdb, %rsi
nop
nop
nop
nop
lfence
movw $0x6162, (%rsi)
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0x8cdb, %rbx
nop
nop
nop
nop
add %rbp, %rbp
movb $0x61, (%rbx)
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x141fb, %rbx
nop
nop
nop
inc %rbp
movw $0x6162, (%rbx)
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x111c3, %rsi
lea addresses_normal_ht+0x1079f, %rdi
nop
nop
cmp %r9, %r9
mov $125, %rcx
rep movsl
nop
nop
nop
nop
xor $28282, %rbx
lea addresses_D_ht+0x12efb, %rsi
lea addresses_WT_ht+0x44ff, %rdi
xor %rbx, %rbx
mov $78, %rcx
rep movsq
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x16edb, %rsi
lea addresses_A_ht+0x10bdb, %rdi
add $56914, %rbp
mov $40, %rcx
rep movsb
nop
nop
nop
nop
cmp $2589, %r9
lea addresses_UC_ht+0x1285b, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add %rdx, %rdx
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %r11
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0xfa27, %r11
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x954b, %rsi
lea addresses_WT_ht+0x67db, %rdi
nop
nop
nop
nop
nop
sub $51192, %rbx
mov $16, %rcx
rep movsl
nop
nop
nop
nop
nop
add $6626, %rbx
lea addresses_WC_ht+0x3cdb, %rsi
lea addresses_WT_ht+0xcadb, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $96, %rcx
rep movsw
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x503f, %r9
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %r9
vmovaps %ymm3, (%r9)
nop
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x1ef53, %r9
nop
nop
nop
xor %rdx, %rdx
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
nop
dec %rdx

// Load
lea addresses_RW+0x170db, %rbp
nop
cmp %rsi, %rsi
vmovups (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
sub $6083, %rdx

// Store
lea addresses_WT+0x189db, %rdx
nop
nop
nop
nop
nop
mfence
movb $0x51, (%rdx)
nop
nop
xor %rsi, %rsi

// REPMOV
lea addresses_WT+0x18e9b, %rsi
lea addresses_WT+0x11bdb, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $68, %rcx
rep movsl
sub $41868, %rcx

// Load
lea addresses_UC+0x11c8b, %rax
nop
nop
and %rdx, %rdx
mov (%rax), %di
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_D+0xeb5b, %rdx
nop
dec %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_normal+0xd3a3, %rbx
clflush (%rbx)
and $10257, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
nop
nop
nop
cmp %rdi, %rdi

// Load
lea addresses_US+0x1b77b, %rdi
nop
cmp %rcx, %rcx
mov (%rdi), %rdx
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_WT+0x11bdb, %rbx
nop
nop
nop
and %rsi, %rsi
movb (%rbx), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
