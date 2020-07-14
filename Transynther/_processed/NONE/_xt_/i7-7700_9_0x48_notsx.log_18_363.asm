.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1e7a3, %rsi
lea addresses_D_ht+0x58b3, %rdi
nop
nop
nop
dec %rbp
mov $105, %rcx
rep movsq
nop
nop
nop
nop
sub $23739, %r15
lea addresses_normal_ht+0xfb23, %rdx
and %r13, %r13
movb $0x61, (%rdx)
xor %r13, %r13
lea addresses_UC_ht+0x11bd3, %rdx
nop
nop
nop
sub %rdi, %rdi
movw $0x6162, (%rdx)
nop
nop
nop
nop
sub $1308, %r13
lea addresses_A_ht+0x1b5ef, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
nop
nop
nop
nop
add $37167, %rdx
lea addresses_WC_ht+0x1ae13, %r15
nop
nop
nop
nop
nop
sub $12402, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1eed3, %r13
nop
nop
nop
nop
xor $21767, %r15
mov (%r13), %rdi
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x3d53, %rdi
nop
nop
nop
inc %r13
movw $0x6162, (%rdi)
cmp %rsi, %rsi
lea addresses_D_ht+0x15bf, %rsi
lea addresses_WT_ht+0xcc73, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $97, %rcx
rep movsb
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0xc3d3, %rsi
lea addresses_WC_ht+0x20d3, %rdi
nop
cmp $24653, %r12
mov $19, %rcx
rep movsl
nop
nop
xor $24535, %rdi
lea addresses_WC_ht+0x133d3, %r15
nop
nop
inc %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm3
and $0xffffffffffffffc0, %r15
movntdq %xmm3, (%r15)
nop
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rsi

// Store
mov $0x44ed4300000006c3, %rsi
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
and $7177, %r15

// Store
lea addresses_UC+0x136d3, %r13
nop
inc %r14
mov $0x5152535455565758, %r12
movq %r12, (%r13)
nop
cmp %r12, %r12

// Faulty Load
lea addresses_normal+0x14bd3, %rsi
nop
nop
nop
nop
nop
sub $54359, %r12
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'34': 18}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
