.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x176aa, %r12
nop
sub $49531, %rdi
movw $0x6162, (%r12)
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x18dda, %rsi
nop
nop
nop
nop
nop
xor %r13, %r13
movb (%rsi), %r10b
inc %r12
lea addresses_WC_ht+0xda64, %rdx
nop
nop
nop
xor $57102, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
and $0xffffffffffffffc0, %rdx
movntdq %xmm1, (%rdx)
nop
nop
nop
nop
sub $31712, %rdi
lea addresses_WT_ht+0x1e5da, %r10
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x75da, %r14
clflush (%r14)
nop
nop
nop
nop
add $28096, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm3
movups %xmm3, (%r14)
inc %r12
lea addresses_WT_ht+0x1d8da, %rsi
lea addresses_WC_ht+0x50e8, %rdi
nop
nop
add %r14, %r14
mov $92, %rcx
rep movsw
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1cdda, %rsi
lea addresses_WC_ht+0x198aa, %rdi
nop
nop
xor $56799, %r13
mov $121, %rcx
rep movsw
nop
cmp $39228, %rdx
lea addresses_A_ht+0x1cd52, %rsi
lea addresses_normal_ht+0x1c79a, %rdi
nop
inc %r13
mov $108, %rcx
rep movsb
nop
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x17ab0, %r10
clflush (%r10)
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r10), %edx
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x6eda, %rsi
lea addresses_UC_ht+0x12eaa, %rdi
nop
nop
nop
nop
and $11958, %r13
mov $6, %rcx
rep movsb
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x43da, %rsi
lea addresses_UC_ht+0x165a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
add %r14, %r14
mov $91, %rcx
rep movsb
nop
nop
dec %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x49c2, %rbx
nop
sub %rbp, %rbp
movl $0x51525354, (%rbx)
sub $13885, %rbp

// Load
lea addresses_A+0x51da, %r13
nop
xor $31065, %rdi
mov (%r13), %r10d
nop
nop
nop
dec %rbx

// Load
lea addresses_A+0xbdda, %rdi
nop
nop
add %r13, %r13
mov (%rdi), %rbx
nop
nop
nop
dec %rdi

// Store
lea addresses_normal+0x98fa, %rbp
clflush (%rbp)
and %rbx, %rbx
movb $0x51, (%rbp)
nop
xor $62298, %r13

// Faulty Load
lea addresses_US+0x1ddda, %r10
nop
nop
nop
nop
nop
dec %rbx
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'00': 117}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
