.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xadec, %rdx
nop
nop
add $54159, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x4844, %rsi
lea addresses_D_ht+0x13664, %rdi
cmp $33879, %r8
mov $26, %rcx
rep movsl
cmp $24018, %rsi
lea addresses_UC_ht+0xb324, %rsi
lea addresses_normal_ht+0x1a329, %rdi
cmp %rax, %rax
mov $82, %rcx
rep movsw
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x8fa4, %rsi
lea addresses_A_ht+0x1a24, %rdi
nop
nop
nop
add $51278, %rdx
mov $83, %rcx
rep movsq
nop
and $9641, %rdx
lea addresses_UC_ht+0x15b78, %rdi
nop
nop
xor %r10, %r10
mov (%rdi), %si
nop
nop
nop
inc %rax
lea addresses_D_ht+0x1e6a4, %rcx
nop
nop
nop
add %r11, %r11
movb $0x61, (%rcx)
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Store
mov $0x6a4, %rcx
nop
add %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovaps %ymm2, (%rcx)
sub %r15, %r15

// REPMOV
lea addresses_WT+0x134e4, %rsi
lea addresses_UC+0x1f336, %rdi
add $45535, %r10
mov $40, %rcx
rep movsl
nop
nop
sub %r15, %r15

// REPMOV
lea addresses_RW+0x9e40, %rsi
lea addresses_normal+0x8ea4, %rdi
nop
nop
nop
sub $16629, %r15
mov $31, %rcx
rep movsb
nop
nop
nop
add %rdi, %rdi

// Faulty Load
lea addresses_normal+0x8ea4, %rdi
nop
cmp $15740, %r14
mov (%rdi), %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT'}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'c7': 1, '16': 1}
c7 16
*/
