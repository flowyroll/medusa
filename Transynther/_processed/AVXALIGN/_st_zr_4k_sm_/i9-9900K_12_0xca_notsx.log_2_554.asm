.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a1cc, %rsi
lea addresses_normal_ht+0x9b4c, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $126, %rcx
rep movsq
nop
nop
nop
nop
sub $33231, %r10
lea addresses_WT_ht+0x19e4c, %rsi
lea addresses_normal_ht+0xa94c, %rdi
nop
nop
nop
xor $7002, %r9
mov $66, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xc5c, %rdi
nop
nop
nop
and $29848, %rbx
mov (%rdi), %esi
nop
nop
nop
sub $9043, %rsi
lea addresses_WT_ht+0x88e4, %rsi
lea addresses_UC_ht+0x136ec, %rdi
nop
nop
inc %r8
mov $13, %rcx
rep movsq
nop
nop
xor $33386, %r8
lea addresses_A_ht+0xdd4c, %rsi
lea addresses_UC_ht+0x1069c, %rdi
add %r13, %r13
mov $124, %rcx
rep movsq
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x19d64, %rsi
nop
nop
dec %rdi
mov (%rsi), %r8
nop
nop
nop
add $30615, %rsi
lea addresses_WC_ht+0xe80c, %r9
nop
nop
nop
nop
nop
add $60888, %rbx
movw $0x6162, (%r9)
nop
add $39989, %r8
lea addresses_A_ht+0x7b4c, %r13
xor %rcx, %rcx
movb (%r13), %r10b
cmp %rsi, %rsi
lea addresses_normal_ht+0x7f4c, %rsi
lea addresses_D_ht+0x11ccc, %rdi
clflush (%rsi)
inc %rbx
mov $100, %rcx
rep movsb
nop
nop
sub $58854, %rbx
lea addresses_WT_ht+0x1cbcc, %rsi
lea addresses_UC_ht+0x1b228, %rdi
add $40842, %r8
mov $43, %rcx
rep movsb
xor $39997, %r9
lea addresses_WC_ht+0x9b4c, %r9
nop
add %r8, %r8
mov (%r9), %ecx
nop
nop
inc %rcx
lea addresses_normal_ht+0xa178, %r10
clflush (%r10)
nop
nop
nop
nop
and $44934, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x958c, %rcx
nop
add $61804, %rbx
movb $0x61, (%rcx)
cmp %rbx, %rbx
lea addresses_normal_ht+0x9ecc, %rsi
lea addresses_normal_ht+0xe74c, %rdi
clflush (%rsi)
sub %r8, %r8
mov $24, %rcx
rep movsb
nop
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x15b63, %rsi
lea addresses_UC+0xa3ec, %rdi
clflush (%rdi)
nop
nop
and %rbx, %rbx
mov $47, %rcx
rep movsw
nop
cmp %rbx, %rbx

// Store
lea addresses_WT+0x1cc4c, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor $11875, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Load
lea addresses_US+0x1b54c, %rdx
nop
nop
nop
nop
cmp $59849, %rdi
movb (%rdx), %cl
add %rdi, %rdi

// Store
lea addresses_normal+0x18c4c, %rdx
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
and $55261, %rsi

// Store
lea addresses_WC+0x81ac, %r13
clflush (%r13)
add %rdx, %rdx
movb $0x51, (%r13)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_PSE+0x1d20c, %r12
nop
nop
nop
nop
nop
inc %rbx
movw $0x5152, (%r12)
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WC+0xba5c, %r13
nop
nop
sub %r12, %r12
movw $0x5152, (%r13)
nop
nop
nop
xor $28810, %rbx

// Load
lea addresses_US+0x6d4c, %rbx
sub %rcx, %rcx
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r13
add $7816, %rdi

// Store
lea addresses_PSE+0x1da24, %rsi
clflush (%rsi)
nop
add %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_D+0x1c14c, %rcx
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
xor $58942, %rsi

// Store
lea addresses_US+0x1b54c, %rcx
inc %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
add $3485, %rcx

// Store
mov $0x54c, %rbx
nop
nop
nop
nop
cmp $20631, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_US+0x1b54c, %r13
and %r12, %r12
movaps (%r13), %xmm7
vpextrq $0, %xmm7, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'00': 1, '58': 1}
58 00
*/
