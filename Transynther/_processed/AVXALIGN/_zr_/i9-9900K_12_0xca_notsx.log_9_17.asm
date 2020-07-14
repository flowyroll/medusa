.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x515c, %rsi
lea addresses_D_ht+0x13224, %rdi
nop
nop
dec %rbp
mov $36, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x4e5c, %rdi
cmp %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x1ceea, %r14
nop
nop
nop
nop
nop
xor $33394, %r12
mov (%r14), %rdi
xor $37199, %rcx
lea addresses_A_ht+0x1e1bc, %rcx
nop
xor $38928, %r14
movb (%rcx), %al
sub %rbp, %rbp
lea addresses_UC_ht+0x4e5c, %rsi
lea addresses_WT_ht+0xf1cc, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $124, %rcx
rep movsl
nop
nop
nop
nop
sub $54151, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x10a5c, %rcx
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movntdq %xmm7, (%rcx)
nop
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_normal+0xf4bb, %r8
nop
nop
nop
sub $56320, %r12
mov $0x5152535455565758, %rax
movq %rax, (%r8)
dec %rdi

// Store
lea addresses_UC+0x845c, %r8
nop
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%r8)
add $10728, %r10

// Store
mov $0x1dc, %r8
nop
nop
cmp $54192, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r8)
nop
nop
and $34034, %rdi

// Load
lea addresses_US+0xae5c, %r10
nop
nop
nop
inc %rdx
mov (%r10), %eax
nop
sub $15738, %r12

// Faulty Load
lea addresses_US+0xae5c, %rdx
nop
nop
nop
nop
add $17715, %r12
movb (%rdx), %r8b
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
