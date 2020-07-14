.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1bb67, %rsi
lea addresses_normal_ht+0x1ed67, %rdi
nop
nop
nop
nop
dec %rax
mov $84, %rcx
rep movsw
nop
cmp $50366, %r13
lea addresses_WT_ht+0xf4e7, %r15
nop
nop
dec %rsi
movb $0x61, (%r15)
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x227, %rsi
lea addresses_normal_ht+0x3427, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $20989, %r8
mov $107, %rcx
rep movsq
nop
add $8712, %rdi
lea addresses_WT_ht+0x11e67, %rsi
lea addresses_UC_ht+0xf067, %rdi
nop
xor %rbp, %rbp
mov $120, %rcx
rep movsb
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0xb29d, %r15
nop
nop
nop
xor $14533, %rax
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
nop
sub $41086, %r13
lea addresses_WT_ht+0x9237, %rsi
nop
cmp %rax, %rax
mov (%rsi), %r8w
sub $55680, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0xa287, %rdi
clflush (%rdi)
nop
nop
nop
xor $19796, %rcx
movb $0x51, (%rdi)
nop
nop
nop
add $47762, %rsi

// Load
lea addresses_WC+0x8961, %rcx
clflush (%rcx)
nop
xor %rdx, %rdx
mov (%rcx), %rdi
sub $43194, %r8

// Store
lea addresses_US+0x8eef, %r8
nop
nop
nop
nop
nop
cmp $60423, %rsi
movw $0x5152, (%r8)
nop
nop
nop
nop
xor %rsi, %rsi

// REPMOV
lea addresses_A+0x1ce7, %rsi
lea addresses_WC+0xc667, %rdi
nop
nop
nop
nop
sub $17824, %r13
mov $48, %rcx
rep movsl
nop
nop
and $33070, %rdi

// Store
lea addresses_normal+0x1f667, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
add %rdi, %rdi
movb $0x51, (%rdx)
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_normal+0x1e267, %rdi
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
dec %r9

// REPMOV
lea addresses_D+0xbe67, %rsi
lea addresses_PSE+0x9a7, %rdi
mfence
mov $97, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_A+0x1c450, %rsi
nop
nop
nop
nop
nop
and $14344, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
mov $0x21f, %rdx
nop
nop
nop
nop
nop
dec %rdi
movl $0x51525354, (%rdx)
nop
and %rdi, %rdi

// Store
lea addresses_WT+0x16a67, %rdx
nop
sub $12665, %r13
movw $0x5152, (%rdx)
and $10567, %rdx

// Store
lea addresses_normal+0x16e67, %rsi
nop
nop
nop
nop
and $19310, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
nop
cmp $65297, %r8

// REPMOV
lea addresses_WT+0x15267, %rsi
lea addresses_PSE+0x14a1, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $33, %rcx
rep movsl
nop
and %rcx, %rcx

// Load
lea addresses_WT+0x11be7, %rdx
nop
nop
and $39994, %r8
mov (%rdx), %rcx

// Exception!!!
xor %rsi, %rsi
div %rsi
nop
xor %rdi, %rdi

// REPMOV
lea addresses_normal+0x16e67, %rsi
lea addresses_US+0x8c1f, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $59, %rcx
rep movsw
nop
and $24433, %r13

// Faulty Load
lea addresses_normal+0x16e67, %r9
nop
nop
nop
dec %rcx
mov (%r9), %si
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_A', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_US', 'congruent': 2, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'b8': 1}
b8
*/
