.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x72d8, %rsi
lea addresses_UC_ht+0x172fc, %rdi
nop
sub %rax, %rax
mov $32, %rcx
rep movsq
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x68ec, %rbx
nop
nop
dec %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
and $51912, %rdi
lea addresses_A_ht+0x1732c, %r9
nop
dec %rsi
movb $0x61, (%r9)
nop
sub %rbx, %rbx
lea addresses_A_ht+0xfe8c, %rax
nop
nop
inc %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rax)
nop
dec %rsi
lea addresses_UC_ht+0xd16e, %r14
sub $1257, %rcx
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
sub %rsi, %rsi
lea addresses_D_ht+0x699c, %rax
nop
dec %rbx
mov (%rax), %r14d
nop
nop
nop
nop
nop
and $14963, %rsi
lea addresses_WT_ht+0x1de58, %rax
nop
nop
nop
nop
cmp $47680, %rsi
movb $0x61, (%rax)
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_A+0x1f294, %rsi
nop
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovntdq %ymm0, (%rsi)
nop
nop
nop
xor %r15, %r15

// Store
mov $0xbcc, %rbx
nop
nop
nop
nop
sub %rax, %rax
movl $0x51525354, (%rbx)
nop
nop
add $32020, %rax

// Store
mov $0x3733610000000fcc, %r13
nop
xor $30310, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r13)
nop
sub %r15, %r15

// Faulty Load
lea addresses_normal+0x145cc, %rdx
clflush (%rdx)
nop
nop
nop
add $5103, %r15
mov (%rdx), %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'34': 176}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
