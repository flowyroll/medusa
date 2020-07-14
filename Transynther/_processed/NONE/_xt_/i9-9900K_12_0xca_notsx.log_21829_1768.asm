.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1ec62, %r13
nop
nop
nop
nop
and $60350, %rax
mov $0x6162636465666768, %r9
movq %r9, (%r13)
nop
xor $3476, %r15
lea addresses_normal_ht+0x63a2, %rax
nop
nop
dec %r13
movups (%rax), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x65a2, %rsi
lea addresses_A_ht+0x11a22, %rdi
nop
nop
nop
add %r15, %r15
mov $86, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x1ca22, %r15
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%r15)
and $22351, %rsi
lea addresses_WT_ht+0xe93c, %rcx
nop
nop
inc %r13
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
inc %rcx
lea addresses_normal_ht+0x55a2, %rsi
lea addresses_normal_ht+0x1e482, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $112, %rcx
rep movsl
nop
nop
nop
sub $16444, %rsi
lea addresses_A_ht+0x15192, %r15
nop
nop
nop
xor %r9, %r9
movb (%r15), %r13b
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0xd0c2, %rsi
clflush (%rsi)
nop
and $59448, %r9
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
xor $19100, %rsi
lea addresses_normal_ht+0x133e, %rsi
lea addresses_WT_ht+0x30a2, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $63, %rcx
rep movsq
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x71cc, %rsi
lea addresses_UC_ht+0x14e62, %rdi
nop
nop
nop
cmp %r13, %r13
mov $2, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $25452, %r15
lea addresses_A_ht+0xab22, %rsi
lea addresses_A_ht+0x130a2, %rdi
and %r8, %r8
mov $118, %rcx
rep movsq
nop
nop
nop
nop
sub $9698, %rcx
lea addresses_WT_ht+0x114a2, %rdi
nop
nop
dec %r13
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r15
nop
add $37679, %r8
lea addresses_WT_ht+0xc1c2, %rsi
lea addresses_WC_ht+0x184a2, %rdi
cmp $63696, %r8
mov $7, %rcx
rep movsb
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xfaa2, %r15
nop
sub $58648, %r9
mov (%r15), %ecx
nop
dec %r13
lea addresses_D_ht+0xe0a2, %rcx
nop
nop
nop
nop
nop
dec %rsi
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_WT+0x4ca2, %r15
nop
add $24537, %rdx
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
