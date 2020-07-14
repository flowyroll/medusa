.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1b8db, %rsi
lea addresses_UC_ht+0x833b, %rdi
clflush (%rdi)
nop
nop
nop
and $33075, %r12
mov $101, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x793b, %rdi
nop
nop
nop
nop
add %r10, %r10
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm7
vpextrq $0, %xmm7, %rcx
add %rcx, %rcx
lea addresses_normal_ht+0x1ed3b, %rsi
lea addresses_A_ht+0x4ffb, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $58, %rcx
rep movsb
cmp %rdx, %rdx
lea addresses_A_ht+0x19dbb, %rsi
lea addresses_WT_ht+0xd3e3, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $13, %rcx
rep movsq
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x1c93b, %rdx
nop
nop
nop
nop
and $10451, %r10
mov (%rdx), %si
nop
nop
nop
and $40212, %r10
lea addresses_WT_ht+0x128db, %rdi
nop
nop
cmp $6617, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
and $4015, %r12
lea addresses_D_ht+0x6183, %rsi
lea addresses_UC_ht+0x180fb, %rdi
nop
nop
nop
nop
sub $10134, %rbp
mov $96, %rcx
rep movsw
nop
cmp %r12, %r12
lea addresses_UC_ht+0xf73b, %rsi
lea addresses_A_ht+0xba2f, %rdi
nop
nop
dec %rdx
mov $82, %rcx
rep movsw
inc %rbp
lea addresses_D_ht+0x1c93b, %rsi
lea addresses_D_ht+0x1a53b, %rdi
nop
nop
nop
nop
xor $58874, %r12
mov $124, %rcx
rep movsl
nop
xor $11848, %rdi
lea addresses_A_ht+0xfb3b, %r13
nop
nop
nop
nop
add $13833, %rdi
mov (%r13), %si
nop
sub $3422, %r10
lea addresses_A_ht+0xd33b, %r10
nop
nop
add $26620, %rsi
movl $0x61626364, (%r10)
xor %rbp, %rbp
lea addresses_WC_ht+0x1517b, %rsi
lea addresses_normal_ht+0x11b3b, %rdi
nop
nop
add %r13, %r13
mov $32, %rcx
rep movsq
nop
cmp $60062, %rdx
lea addresses_D_ht+0x1683b, %rsi
lea addresses_WT_ht+0xcfbb, %rdi
nop
nop
nop
xor $43174, %rdx
mov $49, %rcx
rep movsb
nop
nop
sub $57969, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rcx

// Faulty Load
lea addresses_normal+0x1333b, %r14
sub $27118, %rbp
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
