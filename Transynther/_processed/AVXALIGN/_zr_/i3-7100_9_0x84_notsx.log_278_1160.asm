.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xb105, %rsi
lea addresses_UC_ht+0xadbf, %rdi
nop
sub $22663, %r8
mov $104, %rcx
rep movsq
nop
nop
nop
sub $10142, %rbx
lea addresses_WC_ht+0x18ccf, %rsi
lea addresses_UC_ht+0x1890f, %rdi
nop
sub $36619, %r14
mov $1, %rcx
rep movsq
add $43633, %rcx
lea addresses_A_ht+0x1c1ef, %rbx
cmp $24295, %r15
movb (%rbx), %cl
nop
nop
nop
nop
xor $12621, %rcx
lea addresses_normal_ht+0x46cf, %rdi
add $23370, %rsi
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
and $42458, %rbx
lea addresses_A_ht+0x58cf, %rsi
lea addresses_WT_ht+0x76cf, %rdi
clflush (%rsi)
nop
nop
nop
and $3694, %r10
mov $33, %rcx
rep movsq
nop
cmp $25547, %rbx
lea addresses_WT_ht+0xe17f, %rsi
lea addresses_WC_ht+0x10c97, %rdi
nop
nop
nop
and $24384, %r8
mov $92, %rcx
rep movsl
nop
sub $12219, %rcx
lea addresses_normal_ht+0xb5f7, %rsi
lea addresses_D_ht+0xe47f, %rdi
nop
nop
nop
nop
inc %r10
mov $24, %rcx
rep movsw
nop
cmp %r15, %r15
lea addresses_UC_ht+0xf5cf, %rsi
lea addresses_normal_ht+0x5d8f, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $110, %rcx
rep movsw
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x1dbcf, %r14
nop
nop
nop
nop
cmp $35243, %rcx
movl $0x61626364, (%r14)
nop
nop
dec %rsi
lea addresses_D_ht+0xc5af, %r15
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
sub $47572, %rdi
lea addresses_WC_ht+0x2ecf, %rsi
add $42585, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rsi)
nop
sub $13689, %rcx
lea addresses_A_ht+0x46cf, %rsi
lea addresses_D_ht+0xff47, %rdi
nop
nop
nop
nop
xor $56205, %r10
mov $3, %rcx
rep movsb
nop
nop
nop
xor $22774, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xc0cf, %rcx
nop
nop
nop
xor $51094, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%rcx)
dec %rdi

// Load
lea addresses_RW+0x16e5f, %r14
nop
and $15974, %rdx
mov (%r14), %rbp
nop
and $18788, %rdi

// Store
lea addresses_D+0xdccf, %rcx
dec %rbp
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_D+0x124cf, %rbp
nop
cmp $43794, %rdx
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
mov $0x6d22bc000000096f, %rcx
clflush (%rcx)
nop
nop
nop
add $44320, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
add $2075, %rdx

// Store
lea addresses_PSE+0xfacf, %rdx
add $42039, %r14
movb $0x51, (%rdx)
nop
nop
nop
inc %rbp

// Faulty Load
lea addresses_US+0xe8cf, %r14
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%r14), %esi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'00': 278}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
