.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3f11, %rsi
lea addresses_WC_ht+0x1d8d, %rdi
nop
nop
xor $4409, %r8
mov $71, %rcx
rep movsl
add $62634, %rsi
lea addresses_UC_ht+0xde21, %r14
nop
nop
nop
nop
xor %r13, %r13
mov (%r14), %r10d
xor %r10, %r10
lea addresses_A_ht+0xdba1, %rsi
lea addresses_normal_ht+0x6a21, %rdi
nop
nop
nop
add %r12, %r12
mov $65, %rcx
rep movsl
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x11db1, %rcx
nop
nop
nop
nop
nop
sub $36624, %r14
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
add $24877, %r8
lea addresses_A_ht+0x11c21, %r10
nop
nop
nop
nop
dec %rsi
movb (%r10), %r8b
nop
dec %r14
lea addresses_D_ht+0x1ca21, %r12
nop
nop
nop
nop
nop
mfence
movups (%r12), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
add $11766, %r12
lea addresses_WC_ht+0x15c21, %rcx
clflush (%rcx)
sub %r10, %r10
movb $0x61, (%rcx)
nop
add %r8, %r8
lea addresses_WC_ht+0x73b0, %rsi
lea addresses_WC_ht+0x142e9, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $10, %rcx
rep movsb
nop
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x18a21, %rsi
lea addresses_D_ht+0x15221, %rdi
nop
nop
nop
xor %r8, %r8
mov $76, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x17821, %rsi
lea addresses_WT_ht+0x103a1, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $62, %rcx
rep movsw
nop
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0xe21, %r14
nop
nop
nop
nop
dec %rdi
mov (%r14), %r13w
add %rcx, %rcx
lea addresses_WC_ht+0x6225, %rsi
lea addresses_WT_ht+0xf315, %rdi
xor %r13, %r13
mov $125, %rcx
rep movsl
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x15621, %r8
nop
nop
nop
xor $56599, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r8)
nop
nop
and %r10, %r10
lea addresses_D_ht+0x1d881, %rsi
lea addresses_UC_ht+0x18e21, %rdi
cmp $12383, %r14
mov $122, %rcx
rep movsq
nop
nop
and $34050, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
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
push %rsi

// Faulty Load
lea addresses_PSE+0x1ee21, %r10
nop
nop
nop
nop
nop
sub %rsi, %rsi
vmovntdqa (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 11789, '45': 132, '48': 3976, '46': 5932}
48 00 00 00 00 00 00 00 46 00 00 00 00 48 00 00 46 00 00 00 48 46 00 00 46 46 00 48 46 00 46 00 00 48 46 46 00 48 46 00 46 00 00 48 00 48 00 00 46 00 00 46 00 00 46 00 48 46 00 48 48 46 46 00 48 00 00 00 00 48 00 48 46 00 00 00 48 00 46 00 48 46 00 46 00 45 48 00 48 46 00 00 48 00 48 00 48 00 00 48 00 48 46 00 48 46 00 00 00 00 00 00 46 48 48 46 00 00 00 46 00 46 00 46 00 46 00 46 00 00 46 00 00 48 00 00 46 00 00 00 46 00 48 46 00 00 48 46 00 00 48 46 00 46 00 00 46 00 00 46 46 46 00 48 46 48 46 00 48 00 46 48 00 46 00 46 00 46 00 46 00 48 00 46 00 00 46 46 00 00 48 48 00 48 00 00 48 00 46 00 48 46 00 00 46 00 00 46 00 00 46 00 46 46 00 48 46 00 48 48 46 00 00 45 46 00 48 46 00 00 46 46 00 48 00 48 46 00 48 46 00 48 46 00 00 48 46 00 46 00 48 46 00 00 00 46 00 46 48 45 00 48 46 00 48 46 00 48 46 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 46 00 00 00 00 00 48 46 00 48 00 48 00 48 00 48 46 48 46 46 00 00 00 48 46 48 46 00 48 00 00 46 00 00 46 00 48 00 00 00 00 46 00 00 46 48 46 00 48 00 00 46 00 46 00 00 46 00 00 00 46 00 48 46 00 00 48 46 46 00 00 00 00 46 00 48 46 00 48 00 48 46 00 48 00 48 46 00 46 00 46 00 46 46 48 46 00 00 48 00 46 48 46 00 48 46 00 00 00 46 00 48 46 00 46 00 00 46 00 48 46 00 00 00 46 00 46 46 00 00 00 00 46 00 00 48 46 00 00 00 00 46 00 00 46 00 48 46 00 46 00 48 00 48 00 48 00 46 00 46 00 00 46 48 48 46 00 48 00 46 00 00 00 00 00 00 00 00 48 46 00 48 46 00 00 48 00 00 00 48 46 00 00 46 46 00 00 46 00 00 48 46 48 46 00 48 46 00 00 46 00 00 46 00 46 00 00 46 00 00 00 00 46 00 48 00 00 48 46 00 46 00 46 00 48 00 46 00 48 00 48 46 48 00 00 00 48 46 48 00 46 00 00 46 00 48 46 00 00 48 46 46 00 00 00 00 00 46 00 48 46 00 00 48 46 00 48 46 00 00 48 46 00 48 46 00 00 46 46 00 48 00 00 00 46 48 46 48 46 00 00 00 00 46 46 00 00 46 00 00 00 48 46 00 00 46 00 46 46 00 48 46 00 48 46 00 48 00 00 46 00 48 46 48 46 00 48 46 00 48 00 00 48 46 00 45 00 00 00 46 00 00 46 00 00 48 46 46 00 00 48 48 00 46 00 00 00 00 46 00 00 48 00 00 00 00 48 00 48 46 48 00 00 46 48 00 00 00 46 00 48 46 00 00 00 00 46 46 00 00 46 00 00 48 46 00 00 48 46 00 46 00 00 00 46 00 00 00 00 46 00 46 00 00 00 00 48 46 00 00 00 46 00 46 00 48 46 00 00 48 46 00 48 46 00 00 48 46 48 00 00 46 00 48 48 46 00 00 00 48 46 00 00 48 46 00 48 46 00 46 00 00 48 00 48 46 46 00 46 00 48 46 46 00 48 00 48 48 00 48 46 48 46 00 00 48 46 00 48 00 00 48 46 00 00 45 00 00 48 00 00 46 00 00 48 46 00 48 00 46 46 00 00 48 46 00 00 48 46 00 00 00 00 00 00 00 00 00 00 46 00 00 48 46 00 46 45 00 00 46 00 00 00 00 46 00 46 00 00 46 48 00 48 46 00 00 46 00 48 46 48 46 00 00 00 46 00 00 48 00 00 46 48 46 46 00 48 46 48 46 00 46 00 00 00 48 46 00 46 00 48 46 00 00 00 48 46 00 48 46 00 48 00 48 46 00 00 46 00 48 00 00 00 00 00 48 00 00 48 46 48 46 00 00 48 46 00 46 00 46 00 00 46 00 46 00 48 00 00 48 46 00 48 46 00 00 00 00 46 00 46 00 00 48 00 00 48 48 46 00 00 00 00 46 00 00 46 00 48 46 00 46 46 00 46 00 48 46 48 46 48 46 00 48 46 00 00 00 00 46 00 48 00 46 48 00 00 00 00 48 00 48 46 00 00
*/
