.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xbfeb, %rsi
lea addresses_A_ht+0x1a2fd, %rdi
nop
nop
nop
add %r10, %r10
mov $5, %rcx
rep movsq
cmp %rsi, %rsi
lea addresses_UC_ht+0xcd0d, %rsi
lea addresses_WC_ht+0x830d, %rdi
clflush (%rdi)
nop
nop
inc %r15
mov $116, %rcx
rep movsw
sub $50694, %r15
lea addresses_UC_ht+0x670d, %rdi
nop
nop
add %r11, %r11
mov (%rdi), %esi
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x8a0d, %r10
nop
nop
nop
nop
nop
mfence
movups (%r10), %xmm7
vpextrq $1, %xmm7, %rcx
nop
add %rcx, %rcx
lea addresses_WC_ht+0xa40d, %r11
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%r11)
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1440d, %rsi
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rsi)
nop
nop
add $17524, %r15
lea addresses_UC_ht+0x15315, %rsi
lea addresses_WT_ht+0x840d, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $41, %rcx
rep movsl
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x1b99d, %rsi
lea addresses_A_ht+0x180d, %rdi
nop
nop
add $11854, %r14
mov $95, %rcx
rep movsw
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x490d, %rsi
and %rcx, %rcx
mov (%rsi), %r15w
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x820d, %rax
dec %rcx
mov (%rax), %r15w
nop
inc %rdi
lea addresses_A_ht+0x125e8, %r15
nop
nop
xor $16568, %r14
mov (%r15), %rsi
nop
add %r10, %r10
lea addresses_normal_ht+0x1a10d, %rcx
nop
cmp $63050, %rdi
movw $0x6162, (%rcx)
nop
nop
add $14976, %rsi
lea addresses_normal_ht+0xc34d, %r10
nop
nop
nop
nop
nop
and $1009, %rdi
vmovups (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x1ed8d, %rdx
nop
nop
cmp $784, %r9
movw $0x5152, (%rdx)
nop
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_US+0x40d, %r14
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%r14), %bl
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'00': 2}
00 00
*/
