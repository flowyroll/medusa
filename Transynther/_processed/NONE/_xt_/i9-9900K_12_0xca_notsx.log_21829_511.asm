.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x106b2, %r8
nop
nop
nop
sub %rsi, %rsi
mov (%r8), %r10d
nop
sub %r11, %r11
lea addresses_A_ht+0x10c12, %rsi
lea addresses_A_ht+0x12ba2, %rdi
clflush (%rdi)
nop
xor $2664, %r10
mov $98, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_normal_ht+0xd56, %r10
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%r10), %esi
nop
nop
nop
sub $13401, %r10
lea addresses_D_ht+0x1b8b2, %r8
nop
nop
nop
nop
xor $40139, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
and $7112, %rdi
lea addresses_normal_ht+0x13eb6, %r8
nop
nop
nop
nop
nop
add %rcx, %rcx
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
nop
nop
nop
xor $38198, %rbp
lea addresses_WT_ht+0x18092, %rcx
nop
nop
nop
nop
nop
dec %rbp
movl $0x61626364, (%rcx)
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0xa996, %rsi
lea addresses_A_ht+0x1efb2, %rdi
nop
nop
nop
and %r15, %r15
mov $72, %rcx
rep movsq
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x194b2, %r10
nop
nop
cmp %r8, %r8
movb $0x61, (%r10)
nop
nop
add $21329, %rdi
lea addresses_UC_ht+0xef02, %r11
clflush (%r11)
nop
nop
add %rbp, %rbp
mov (%r11), %r10
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x15eb2, %rcx
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x14f72, %rsi
lea addresses_UC_ht+0x1cb2, %rdi
and %r11, %r11
mov $30, %rcx
rep movsb
nop
nop
add $43801, %rdi
lea addresses_D_ht+0x9cb2, %rsi
lea addresses_UC_ht+0x15eb2, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $27, %rcx
rep movsw
cmp $9136, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x9cb2, %rsi
lea addresses_UC+0x74b2, %rdi
nop
nop
and $42989, %rdx
mov $91, %rcx
rep movsw
nop
nop
nop
add $14381, %r15

// Store
lea addresses_normal+0x166b2, %rdx
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm1, (%rdx)
nop
nop
nop
nop
add %rax, %rax

// Load
lea addresses_A+0x169f2, %r11
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r11), %rax
nop
nop
nop
nop
add $51513, %rdi

// Store
lea addresses_normal+0x1c8b2, %rdx
clflush (%rdx)
nop
nop
and %rax, %rax
movw $0x5152, (%rdx)
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_A+0x16cc2, %rcx
clflush (%rcx)
nop
nop
and $47327, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rcx)
nop
nop
nop
nop
mfence

// Load
lea addresses_normal+0x14eb2, %rax
clflush (%rax)
xor %rdx, %rdx
mov (%rax), %r15w
dec %rsi

// Load
lea addresses_D+0x104b2, %rcx
nop
nop
nop
nop
add %rsi, %rsi
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
cmp %rax, %rax

// Faulty Load
lea addresses_D+0x104b2, %rsi
inc %rax
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
