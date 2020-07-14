.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x124f2, %rsi
nop
nop
nop
and $44480, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x1ea51, %rsi
lea addresses_UC_ht+0xdf01, %rdi
clflush (%rsi)
nop
nop
nop
add $56755, %r15
mov $9, %rcx
rep movsw
inc %rcx
lea addresses_WT_ht+0x431a, %r13
nop
nop
nop
nop
nop
cmp $11934, %r10
mov (%r13), %rdi
nop
nop
xor $61377, %rdi
lea addresses_UC_ht+0x8a1, %rsi
lea addresses_normal_ht+0x13f15, %rdi
nop
nop
nop
nop
nop
and $43885, %r10
mov $36, %rcx
rep movsw
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x19401, %rsi
lea addresses_UC_ht+0x301, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $107, %rcx
rep movsw
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x159c1, %rsi
lea addresses_D_ht+0x2301, %rdi
clflush (%rdi)
dec %r10
mov $13, %rcx
rep movsl
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x16301, %rsi
lea addresses_WT_ht+0xc5b, %rdi
clflush (%rdi)
nop
nop
nop
inc %r15
mov $54, %rcx
rep movsq
nop
xor $3362, %rsi
lea addresses_A_ht+0x1421, %r10
nop
nop
sub $26056, %r9
movw $0x6162, (%r10)
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x74c1, %rsi
lea addresses_normal_ht+0x8501, %rdi
nop
nop
xor %r14, %r14
mov $126, %rcx
rep movsl
nop
nop
nop
add $6999, %r10
lea addresses_UC_ht+0x16b01, %rsi
and %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rsi)
cmp $58740, %r9
lea addresses_A_ht+0xe101, %rcx
nop
nop
nop
nop
inc %r15
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0xf1e5, %r13
cmp $2638, %r14
mov (%r13), %di
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x13541, %r13
nop
nop
nop
nop
nop
dec %r14
movups (%r13), %xmm7
vpextrq $1, %xmm7, %r10
nop
sub $40841, %rcx
lea addresses_D_ht+0x1ca81, %rsi
lea addresses_WC_ht+0x11301, %rdi
nop
nop
nop
nop
nop
mfence
mov $1, %rcx
rep movsb
nop
and $24857, %r14
lea addresses_WC_ht+0x12501, %rsi
nop
nop
inc %rdi
movb $0x61, (%rsi)
nop
nop
nop
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x7d81, %rbp
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WC+0x9b61, %rbp
nop
cmp %rcx, %rcx
movw $0x5152, (%rbp)
nop
and $9415, %r8

// Load
lea addresses_WT+0x15b01, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor %rax, %rax
mov (%rcx), %si
nop
sub $45918, %rbp

// Load
mov $0x24029b00000006a1, %rsi
nop
nop
nop
nop
nop
sub %rdx, %rdx
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
nop
and %r10, %r10

// Faulty Load
mov $0x5b72ff0000000301, %r8
nop
nop
nop
cmp $42587, %rcx
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 8}}
{'a1': 1, 'd8': 1, '2d': 1, 'ed': 1, '49': 49, '41': 1, '01': 1, '6a': 1, '7e': 10, '57': 1, '00': 14686, 'ad': 1, 'f9': 1, '7d': 5, '75': 1, '46': 6649, '0f': 1, '19': 1, 'c9': 1, '0d': 1, '60': 413, '5d': 1, '4a': 1}
00 00 00 00 46 00 46 00 00 60 49 46 00 46 46 46 00 46 00 46 46 00 00 00 46 46 00 46 46 00 00 46 00 00 46 46 00 46 00 46 00 00 46 00 00 46 49 46 00 46 00 46 00 00 49 00 00 46 00 00 46 00 46 00 00 00 46 46 00 00 60 00 46 00 00 00 00 46 46 00 00 00 46 46 00 46 00 00 00 00 46 00 46 00 46 00 46 00 46 00 00 46 00 46 00 46 00 00 46 46 00 46 00 00 00 46 00 46 46 00 46 46 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 46 00 00 46 00 46 00 00 46 00 46 46 46 00 00 46 00 46 00 00 46 00 46 00 00 46 00 46 00 00 00 46 00 00 46 00 46 00 00 46 60 00 00 46 00 46 00 00 00 00 00 00 00 00 46 00 46 00 00 46 46 00 46 46 00 00 00 00 00 00 00 46 46 00 00 00 00 00 46 00 46 00 00 00 00 00 00 46 00 46 46 00 00 46 00 00 00 00 46 00 46 00 46 49 60 00 46 00 46 00 46 46 00 00 46 46 00 00 46 46 00 46 00 00 46 00 46 00 00 46 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 46 00 46 00 00 00 00 00 60 00 46 46 46 00 00 46 46 46 00 00 46 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 46 46 00 46 00 46 00 46 46 46 00 46 00 00 46 00 00 00 46 60 00 00 46 00 46 00 00 00 00 00 46 00 00 00 00 46 00 46 00 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 00 46 46 00 46 00 00 00 46 00 46 00 00 46 00 46 00 00 46 00 46 00 00 46 00 46 00 00 00 00 00 46 00 46 00 46 00 00 46 46 46 00 00 46 00 46 00 00 46 00 00 46 00 00 46 00 00 00 46 46 00 00 00 00 46 00 46 00 46 46 46 00 46 00 46 00 46 00 46 46 00 46 46 00 00 46 46 00 00 46 46 00 46 00 00 46 00 00 00 46 00 60 00 46 46 00 00 46 00 00 00 46 00 00 00 00 46 60 00 00 00 00 46 00 00 00 00 46 00 46 00 46 00 46 46 00 00 46 00 00 46 00 00 00 46 46 00 00 00 00 00 46 60 00 00 46 00 00 46 46 00 46 00 46 00 46 00 46 00 46 00 46 46 00 00 46 46 00 00 46 46 00 46 46 00 46 46 00 46 00 00 00 00 00 46 46 46 46 00 46 00 46 00 46 00 46 00 46 46 00 00 46 00 46 00 46 46 46 00 46 00 46 00 46 00 00 00 00 00 00 00 46 00 46 00 00 46 46 00 00 00 46 00 00 46 00 00 46 46 00 00 46 00 00 00 46 00 46 46 00 46 00 00 00 46 46 00 00 46 00 46 46 00 00 46 00 00 00 00 46 46 00 00 46 00 46 46 46 46 00 46 00 46 46 00 00 00 46 00 00 46 00 00 00 46 60 00 00 46 00 46 00 00 46 00 00 46 00 46 00 46 00 00 46 60 00 46 00 46 00 00 46 46 60 00 46 60 00 46 46 00 00 00 46 00 00 00 00 00 00 00 46 46 00 46 00 00 46 00 46 00 00 46 00 00 46 00 46 49 00 00 60 46 00 00 00 46 46 00 00 46 46 00 46 00 00 00 46 00 00 46 00 46 00 00 46 00 46 00 00 46 46 00 46 00 00 60 00 46 46 46 00 46 46 00 46 46 46 00 46 00 46 00 46 00 46 00 46 46 00 46 00 00 46 46 00 46 46 46 46 00 46 46 00 00 46 00 46 46 00 00 46 00 46 46 00 46 46 46 00 46 46 46 00 46 46 46 00 46 46 46 00 46 46 00 00 46 60 46 46 46 00 00 00 46 46 46 46 00 00 46 00 46 00 00 00 46 00 46 46 00 46 00 46 00 46 00 46 00 46 46 46 00 46 46 00 00 46 00 46 00 46 46 46 00 46 00 46 00 00 00 00 46 46 00 46 46 00 46 46 46 46 00 46 00 00 46 46 00 00 00 46 46 46 00 46 00 00 00 00 46 00 46 00 46 00 00 46 00 46 00 00 46 00 00 46 00 46 00 00 46 00 00 00 00 46 00 46 00 46 00 46 46 00 00 00 46 46 00 46 00 00 00 46 00 00 46 00 46 46 46 00 46 00 00 46 00 46 00 46 00 46 46
*/
