.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3788, %rbx
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%rbx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x11410, %r10
nop
dec %r14
movl $0x61626364, (%r10)
nop
nop
nop
inc %r14
lea addresses_WC_ht+0xf6c8, %rcx
sub $3071, %rsi
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x1b4fa, %r14
nop
nop
nop
add $58175, %rbx
movl $0x61626364, (%r14)
add %rbp, %rbp
lea addresses_UC_ht+0x125c8, %rbx
nop
nop
nop
nop
add %rsi, %rsi
movw $0x6162, (%rbx)
xor $63383, %rsi
lea addresses_A_ht+0x1d5c8, %rsi
lea addresses_A_ht+0x22c8, %rdi
nop
nop
nop
nop
dec %r10
mov $100, %rcx
rep movsq
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x1d36c, %rsi
lea addresses_WT_ht+0x1eec8, %rdi
clflush (%rsi)
nop
nop
nop
add %r14, %r14
mov $104, %rcx
rep movsb
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0xa48, %r14
nop
nop
nop
and $54045, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WC+0x1de3a, %rdx
nop
nop
nop
nop
sub $60051, %r8
vmovaps (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
and %rdx, %rdx

// Load
lea addresses_PSE+0x1c9c8, %rcx
nop
nop
nop
nop
nop
and $12579, %rdi
movb (%rcx), %dl
nop
nop
nop
nop
nop
xor $34830, %r12

// Faulty Load
mov $0x6b4d4a0000000dc8, %rdi
clflush (%rdi)
nop
nop
xor $37789, %r8
vmovntdqa (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'1f': 2, '16': 91, '45': 54, '91': 4, '60': 123, '70': 1}
16 16 60 60 60 45 60 45 60 60 16 16 16 60 16 45 45 60 60 45 16 16 16 60 60 16 45 60 91 60 45 60 45 45 45 60 60 45 60 60 60 60 45 60 91 60 60 60 16 16 60 45 16 60 16 1f 45 16 16 16 16 16 60 16 45 60 60 45 91 16 45 60 16 60 45 16 60 60 60 60 16 45 60 16 60 16 45 45 60 45 60 16 16 16 16 60 60 45 45 60 16 60 16 60 45 60 60 16 60 16 16 16 60 60 60 16 45 16 60 45 60 60 60 16 60 16 60 60 60 60 45 16 60 60 16 60 45 16 60 60 16 16 16 45 60 16 45 60 45 60 45 60 60 60 16 60 60 60 16 16 16 16 60 16 60 60 45 45 16 60 16 60 45 16 45 60 45 60 45 60 60 60 60 60 16 16 16 60 16 45 45 16 16 60 60 16 16 16 45 16 60 16 60 60 1f 60 16 45 60 16 16 16 60 16 60 45 60 60 16 60 16 45 45 60 60 60 60 16 16 16 16 16 60 60 16 60 45 60 60 16 70 16 45 16 16 60 45 16 60 16 60 60 91 60 16 16 60 60 45 16 60 60 45 45 60 45 45 16 60 60 16 60 60 60 60
*/
