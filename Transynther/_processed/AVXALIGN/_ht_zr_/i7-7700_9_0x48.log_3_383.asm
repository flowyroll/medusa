.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5dca, %rsi
lea addresses_WC_ht+0xe922, %rdi
nop
nop
nop
nop
and $50374, %r9
mov $121, %rcx
rep movsb
lfence
lea addresses_D_ht+0x136aa, %rsi
lea addresses_D_ht+0x12e6a, %rdi
nop
nop
nop
nop
cmp $20606, %r10
mov $35, %rcx
rep movsq
nop
nop
nop
sub $9298, %rcx
lea addresses_D_ht+0x1424a, %rsi
lea addresses_normal_ht+0x320a, %rdi
xor %r14, %r14
mov $44, %rcx
rep movsw
nop
sub %r10, %r10
lea addresses_WC_ht+0xa0a, %r9
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %r9
movaps %xmm6, (%r9)
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xe70a, %rax
nop
nop
nop
nop
nop
sub $50691, %r14
movl $0x51525354, (%rax)
xor %rbx, %rbx

// Load
lea addresses_RW+0x1a26a, %rsi
nop
nop
nop
inc %r14
mov (%rsi), %rbx
nop
xor $57233, %rax

// Load
lea addresses_A+0xcb9a, %rdx
nop
add %r9, %r9
mov (%rdx), %esi
add %rdx, %rdx

// REPMOV
lea addresses_D+0x8a0a, %rsi
lea addresses_UC+0x13862, %rdi
clflush (%rdi)
nop
nop
and %rax, %rax
mov $6, %rcx
rep movsb
nop
nop
nop
xor %r9, %r9

// Store
mov $0x464000000000020a, %rsi
add %r9, %r9
movw $0x5152, (%rsi)
xor $16948, %rax

// Store
lea addresses_WC+0xd60a, %rbx
inc %rsi
movw $0x5152, (%rbx)
nop
sub %rcx, %rcx

// Faulty Load
mov $0x464000000000020a, %rbx
and $24659, %rdx
vmovaps (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 7, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 10, 'size': 16, 'same': False, 'NT': True}}
{'46': 2, '00': 1}
00 46 46
*/
