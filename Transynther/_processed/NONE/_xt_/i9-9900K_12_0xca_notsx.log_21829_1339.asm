.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x119dc, %r8
sub $27550, %rbp
movw $0x6162, (%r8)
nop
nop
sub $47387, %rdx
lea addresses_A_ht+0xac7b, %rsi
lea addresses_UC_ht+0x1a95b, %rdi
nop
nop
nop
nop
nop
add $35328, %r8
mov $40, %rcx
rep movsq
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xab1b, %rdx
nop
nop
and %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rdx)
nop
and %rbp, %rbp
lea addresses_normal_ht+0x15d6b, %rsi
lea addresses_WT_ht+0x1542f, %rdi
nop
nop
cmp $46131, %r14
mov $63, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xc0eb, %rdx
nop
nop
nop
nop
sub $52353, %rdi
mov (%rdx), %rsi
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x896b, %r8
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
cmp $51818, %rdx
lea addresses_normal_ht+0x69eb, %rcx
nop
nop
nop
lfence
mov (%rcx), %bp
nop
nop
xor $10781, %rdi
lea addresses_WT_ht+0xb36b, %rsi
lea addresses_WT_ht+0x996b, %rdi
nop
nop
cmp %r8, %r8
mov $91, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x40a3, %rsi
lea addresses_UC_ht+0x8d6b, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $98, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $37825, %r14
lea addresses_UC_ht+0x411d, %r8
nop
nop
nop
xor $18742, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
and $0xffffffffffffffc0, %r8
vmovaps %ymm0, (%r8)
and %r14, %r14
lea addresses_A_ht+0x276b, %rsi
nop
sub $23028, %r11
mov (%rsi), %r8
nop
nop
nop
nop
and $14507, %rdi
lea addresses_UC_ht+0x1c6eb, %rdi
nop
sub %r8, %r8
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm6
vpextrq $0, %xmm6, %rdx
lfence
lea addresses_A_ht+0xb003, %rsi
lea addresses_UC_ht+0x516b, %rdi
nop
nop
nop
nop
nop
sub $61744, %r14
mov $87, %rcx
rep movsw
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x98ab, %rsi
lea addresses_D_ht+0x1abeb, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r8
mov $0, %rcx
rep movsw
nop
nop
nop
nop
add $55903, %r8
lea addresses_UC_ht+0x8ab, %rsi
lea addresses_WC_ht+0x1996b, %rdi
nop
nop
nop
nop
and $15981, %r11
mov $1, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x1237b, %r14
nop
cmp %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%r14)
nop
inc %r14

// Store
lea addresses_normal+0x1044b, %r13
nop
nop
nop
nop
nop
and $22317, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
and $10626, %r12

// REPMOV
lea addresses_UC+0xa20b, %rsi
lea addresses_WC+0x1a9f9, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $107, %rcx
rep movsw
cmp $26429, %rcx

// Load
mov $0xd6b, %r15
nop
nop
mfence
movups (%r15), %xmm2
vpextrq $0, %xmm2, %r14
xor %r13, %r13

// Store
lea addresses_D+0x1da5f, %r13
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_D+0x596b, %rdi
nop
nop
dec %r14
mov (%rdi), %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
