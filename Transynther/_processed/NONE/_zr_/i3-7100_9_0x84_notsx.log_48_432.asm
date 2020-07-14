.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x7f89, %rax
nop
nop
nop
nop
inc %r10
movl $0x61626364, (%rax)
nop
xor $62415, %rdx
lea addresses_A_ht+0x1a007, %r15
nop
and $36089, %r14
movb (%r15), %r12b
nop
nop
cmp $54918, %rax
lea addresses_D_ht+0xb607, %rdx
nop
nop
nop
nop
nop
cmp $25139, %r10
movw $0x6162, (%rdx)
nop
inc %rax
lea addresses_D_ht+0x19da7, %rsi
lea addresses_UC_ht+0x1c527, %rdi
sub %r15, %r15
mov $58, %rcx
rep movsb
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x1e07, %r14
nop
cmp $43924, %rsi
mov (%r14), %r10w
nop
nop
add $49758, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x16ba7, %r10
nop
and $35175, %r9
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_D+0x1d447, %r8
nop
nop
dec %rbx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
and $35872, %r8

// Store
lea addresses_WC+0xbda0, %r10
nop
nop
nop
nop
nop
add $34630, %r9
movb $0x51, (%r10)
nop
nop
nop
nop
add %rax, %rax

// REPMOV
lea addresses_WT+0x12e07, %rsi
lea addresses_D+0x16c07, %rdi
nop
nop
nop
xor $49342, %rbx
mov $119, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rax

// Store
lea addresses_PSE+0x13803, %rdi
nop
nop
nop
nop
xor %rax, %rax
movw $0x5152, (%rdi)
nop
inc %rax

// Store
lea addresses_A+0xfce7, %rcx
nop
and %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
xor $63242, %r9

// Store
lea addresses_UC+0x14027, %rbx
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovaps %ymm2, (%rbx)
nop
nop
nop
dec %rsi

// Store
lea addresses_RW+0x12e07, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
sub $9322, %rdi

// Faulty Load
lea addresses_A+0x1be07, %rdx
nop
nop
nop
nop
nop
dec %r10
movups (%rdx), %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 48}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
