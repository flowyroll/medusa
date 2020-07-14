.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x10ae9, %rsi
lea addresses_UC_ht+0x191f9, %rdi
nop
nop
xor $44856, %r9
mov $114, %rcx
rep movsb
nop
xor $22137, %r15
lea addresses_WT_ht+0xf859, %r14
sub $57219, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x10d19, %rsi
lea addresses_UC_ht+0x125e, %rdi
nop
nop
nop
xor $64523, %r14
mov $89, %rcx
rep movsl
nop
nop
nop
nop
cmp $6432, %rsi
lea addresses_WC_ht+0x14219, %rcx
nop
nop
sub $41272, %r9
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
nop
nop
cmp $58326, %rdi
lea addresses_UC_ht+0xdfeb, %rcx
nop
nop
nop
nop
sub $47597, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
and $6968, %rdi
lea addresses_A_ht+0x2019, %r15
nop
nop
nop
sub $10010, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x1ad19, %rsi
lea addresses_D_ht+0x2922, %rdi
nop
nop
add %r10, %r10
mov $2, %rcx
rep movsb
nop
nop
inc %r9
lea addresses_D_ht+0x19299, %r15
nop
nop
nop
and %rdx, %rdx
movw $0x6162, (%r15)
nop
nop
cmp $8728, %rdx
lea addresses_WC_ht+0xf3f1, %r14
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
xor $661, %r15
lea addresses_A_ht+0xe219, %rcx
nop
nop
nop
dec %r9
mov (%rcx), %di
nop
nop
dec %rcx
lea addresses_D_ht+0x16dca, %rcx
nop
nop
nop
nop
nop
xor $51758, %rdx
movl $0x61626364, (%rcx)
nop
cmp $39930, %r15
lea addresses_normal_ht+0x3a19, %rdx
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
add %rcx, %rcx
lea addresses_WC_ht+0x13d19, %r15
nop
nop
nop
nop
and $64975, %rsi
movl $0x61626364, (%r15)
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x7f87, %rsi
lea addresses_WT_ht+0x1de59, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r15, %r15
mov $35, %rcx
rep movsw
nop
sub $5503, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdx
push %rsi

// Store
mov $0x4a65260000000619, %rsi
xor %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovntdq %ymm0, (%rsi)
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_PSE+0x150d9, %r8
nop
nop
nop
nop
xor $27222, %r12
movl $0x51525354, (%r8)
nop
nop
nop
nop
inc %r12

// Store
lea addresses_WT+0x1919, %r8
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
inc %r10

// Store
mov $0x33c1d700000006d1, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movaps %xmm6, (%rsi)
nop
inc %r10

// Store
mov $0xe19, %r15
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r15)
dec %rdx

// Faulty Load
mov $0x4a65260000000619, %rcx
nop
cmp $18413, %r12
mov (%rcx), %dx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'58': 118, '00': 1}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
