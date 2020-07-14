.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xec36, %r8
nop
add %rdx, %rdx
movb $0x61, (%r8)
nop
dec %rbx
lea addresses_UC_ht+0x1e534, %r13
nop
add %rbx, %rbx
movl $0x61626364, (%r13)
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x14436, %rsi
lea addresses_A_ht+0x16f86, %rdi
nop
nop
sub %rbx, %rbx
mov $45, %rcx
rep movsb
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x10e36, %r8
nop
nop
nop
xor %r13, %r13
mov (%r8), %rcx
cmp $50539, %r8
lea addresses_D_ht+0x42f6, %r8
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x12c0e, %r8
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
nop
inc %r12
lea addresses_D_ht+0x12246, %rsi
lea addresses_WT_ht+0x1cf36, %rdi
inc %r8
mov $44, %rcx
rep movsq
nop
nop
nop
xor $40042, %rcx
lea addresses_A_ht+0x6ea, %rdx
clflush (%rdx)
nop
nop
nop
and %rdi, %rdi
vmovups (%rdx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x1004a, %r12
nop
nop
nop
mfence
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
and $17771, %rbx
lea addresses_UC_ht+0xee2c, %rsi
lea addresses_UC_ht+0x6bce, %rdi
clflush (%rsi)
nop
and %r8, %r8
mov $19, %rcx
rep movsb
nop
and %r13, %r13
lea addresses_D_ht+0x787e, %rsi
lea addresses_D_ht+0x17ca5, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $56, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $33739, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbx
push %rdx
push %rsi

// Faulty Load
mov $0x66c4750000000436, %rsi
nop
nop
nop
nop
sub %rbx, %rbx
movaps (%rsi), %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'46': 17091, '49': 1130, '45': 3574, '44': 22, '00': 12}
46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 45 45 45 46 46 46 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 46 46 46 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 45 45 45 45 45 46 46 46 49 46 46 49 46 46 46 46 46 46 45 45 45 46 46 46 46 46 46 45 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 45 45 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 46 46 46 46 46 46 46 46 46 46 46 46 46 49 45 45 45 45 46 46 46 46 49 46 46 46 46 46 46 46 46 45 45 00 46 46 49 46 46 46 46 46 46 49 45 45 45 45 45 45 45 45 45 45 46 46 46 46 46 46 46 46 46 46 46 49 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 46 46 49 46 46 46 46 46 46 46 46 46 45 45 45 45 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 49 46 46 46 46 46 46 49 45 45 46 46 46 46 49 46 46 45 45 45 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 46 45 45 45 45 45 45 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 49 45 45 45 45 45 46 46 46 46 46 46 49 45 45 45 45 45 45 45 46 46 46 46 46 46 46 46 46 46 46 46 45 45 45 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 49 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 45 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 49 46 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 45 45 46 46 46 46 46 46 45 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 45 45 45 45 45 46 46 46 46 46 46 46 49 45 45 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 45 45 45 45 45 45 45 45 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 46 45 45 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
