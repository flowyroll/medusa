.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5e12, %rsi
lea addresses_WT_ht+0x7f92, %rdi
nop
nop
nop
sub $39440, %r15
mov $125, %rcx
rep movsb
nop
nop
nop
nop
xor $34233, %rbx
lea addresses_D_ht+0x10b12, %rsi
lea addresses_A_ht+0x17f92, %rdi
clflush (%rsi)
nop
nop
nop
inc %rbx
mov $30, %rcx
rep movsb
nop
nop
add $34838, %r15
lea addresses_A_ht+0x2d12, %r9
nop
cmp $33719, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1520, %rcx
nop
sub %r15, %r15
movb (%rcx), %r8b
add $21696, %rdi
lea addresses_A_ht+0x15c12, %rdi
sub %rsi, %rsi
mov (%rdi), %cx
nop
nop
nop
nop
cmp $23746, %rsi
lea addresses_A_ht+0x17c12, %rdi
nop
nop
nop
nop
add $1495, %r9
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rdx

// Store
lea addresses_US+0x7e12, %r12
clflush (%r12)
nop
nop
dec %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r12)
nop
add $33474, %r14

// Faulty Load
lea addresses_US+0x7e12, %r10
nop
nop
nop
xor $47289, %rbx
vmovaps (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'6c': 1, '00': 13938, '46': 7863, '45': 24, 'ff': 3}
00 6c 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 46 46 46 46 00 46 00 00 46 46 00 46 00 00 00 00 46 46 00 00 46 00 46 46 00 46 46 00 46 00 00 00 46 46 00 00 46 00 00 00 00 00 00 00 46 46 46 00 46 00 00 00 00 00 46 00 00 46 46 46 00 00 00 00 46 00 00 46 00 46 00 00 00 46 00 00 00 00 00 00 00 00 46 00 46 00 00 46 46 46 00 46 46 00 00 46 00 00 00 46 45 00 46 00 46 00 46 00 00 46 46 00 46 46 00 00 00 00 46 46 00 46 46 00 00 46 46 46 00 46 00 00 00 00 46 46 00 00 46 00 46 00 46 46 00 00 00 00 46 00 00 00 00 46 46 00 46 00 00 00 46 46 00 46 00 00 46 00 46 46 46 00 46 00 46 00 00 46 46 00 46 00 00 46 00 00 00 00 46 00 46 46 00 46 00 00 00 00 00 00 00 00 46 00 46 00 00 00 46 00 46 46 00 46 00 46 00 46 00 46 00 46 00 00 46 00 00 46 46 00 00 00 46 00 46 46 46 00 00 00 00 00 46 46 46 46 46 00 46 00 46 00 00 00 00 00 46 46 00 00 46 00 46 00 46 46 46 00 00 46 46 46 00 00 00 46 00 00 00 46 46 00 00 46 46 00 00 46 46 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 46 00 46 00 46 00 46 00 00 00 46 00 46 00 00 00 46 46 46 00 46 46 00 00 00 00 00 00 46 00 00 46 46 46 00 46 00 00 00 00 00 46 00 46 00 00 46 46 00 00 46 46 46 00 00 46 00 46 00 46 00 00 46 46 00 00 46 00 46 46 46 46 00 00 46 00 46 46 00 00 00 00 00 46 00 00 00 00 46 46 46 00 46 46 46 46 00 00 00 00 00 00 46 46 00 00 00 00 46 00 00 00 46 00 46 00 00 00 46 00 00 00 46 00 00 00 46 46 46 00 00 00 00 00 00 00 46 46 00 46 00 46 46 00 00 46 00 46 00 46 46 00 00 46 46 00 00 00 46 00 46 00 00 46 00 46 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 46 46 00 46 46 46 00 46 00 46 46 46 46 00 46 00 46 00 00 00 46 00 46 46 46 46 46 00 00 46 00 46 00 00 46 00 00 00 46 46 00 46 00 46 46 00 00 46 00 46 46 46 46 46 00 00 00 46 00 46 00 00 46 46 00 00 00 46 00 00 46 00 00 00 46 46 00 00 00 00 46 46 00 00 46 00 00 46 00 00 00 46 00 46 00 46 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 46 46 00 46 46 00 46 00 00 46 46 00 46 00 00 00 46 46 00 46 46 00 46 46 46 46 00 46 46 00 00 46 46 00 00 00 00 46 00 00 46 00 00 46 46 00 00 46 00 46 00 00 00 46 46 00 46 00 46 46 00 00 46 00 46 00 46 00 00 00 46 46 46 00 46 00 00 00 46 00 46 00 00 46 46 00 46 46 00 00 46 46 00 00 00 00 46 00 00 00 46 46 46 00 00 46 00 00 46 00 00 46 00 00 00 46 00 00 46 00 46 00 46 46 00 46 00 46 00 00 00 46 00 46 00 46 00 46 00 00 46 00 00 46 00 46 00 00 00 00 46 46 00 46 00 00 00 46 46 00 00 00 00 00 00 00 46 00 46 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 46 46 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 46 00 46 00 00 00 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 46 46 00 46 00 00 46 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 46 46 46 46 00 46 46 46 46 00 46 00 46 00 00 46 00 46 00 46 46 00 46 00 00 46 00 00 00 46 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 46 00 46 00 46 00 00 00 00 00 00 00 46 46 46 46 00 00 46 00 46 46 46 46 00
*/
