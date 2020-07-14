.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xacd2, %rsi
lea addresses_WC_ht+0x63d2, %rdi
nop
nop
xor $64002, %r15
mov $70, %rcx
rep movsb
nop
nop
xor $42479, %r9
lea addresses_A_ht+0x154d2, %r10
nop
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
and $23886, %rsi
lea addresses_UC_ht+0xd88c, %rdi
nop
nop
nop
nop
sub %rsi, %rsi
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
and $53047, %rsi
lea addresses_A_ht+0x17a52, %r8
clflush (%r8)
nop
nop
nop
nop
nop
add $60011, %rdi
mov (%r8), %r9d
nop
nop
nop
dec %r9
lea addresses_normal_ht+0xcab2, %rsi
lea addresses_WC_ht+0x100a, %rdi
nop
and $56509, %r15
mov $32, %rcx
rep movsq
nop
nop
nop
nop
sub $35960, %r8
lea addresses_D_ht+0xb4d2, %rcx
nop
nop
nop
inc %rsi
mov (%rcx), %r10w
nop
add $21911, %r10
lea addresses_UC_ht+0x114d2, %rcx
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rcx)
and %rsi, %rsi
lea addresses_WT_ht+0x1cb52, %r8
nop
sub %rdi, %rdi
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
add $55479, %rsi
lea addresses_WC_ht+0x186d2, %rsi
lea addresses_normal_ht+0x1bcd2, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $42, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x15362, %rsi
lea addresses_D_ht+0x1a49a, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $16, %rcx
rep movsb
nop
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbx

// Faulty Load
lea addresses_WT+0xccd2, %r13
nop
nop
nop
nop
nop
xor $445, %rbx
vmovaps (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'47': 61, '48': 5112, '44': 1269, '9a': 1, 'ff': 1, '49': 2, '00': 15383}
00 00 00 00 00 00 00 00 48 00 44 48 48 00 00 00 00 00 00 00 00 00 00 00 00 47 44 00 44 00 48 00 00 00 00 48 00 00 48 00 00 48 00 44 48 44 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 44 00 00 00 00 00 48 44 00 48 00 00 00 48 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 44 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 48 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 00 00 00 48 00 00 48 00 48 00 00 00 00 00 00 48 48 48 00 00 00 44 00 00 00 00 00 48 00 00 48 00 00 00 48 00 00 48 00 48 44 44 00 00 00 00 48 00 00 44 48 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 00 48 44 00 00 48 00 00 00 00 44 48 48 00 48 48 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 44 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 48 00 44 00 00 00 48 00 00 48 48 48 48 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 44 00 44 00 00 00 00 00 48 48 44 00 47 00 00 48 00 00 00 44 00 48 48 00 00 48 48 48 48 00 48 00 00 44 00 00 48 00 44 00 48 00 00 48 00 00 00 00 00 00 00 00 44 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 48 00 00 48 44 00 00 48 00 00 00 00 44 48 00 00 48 44 00 48 00 00 00 00 00 48 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 48 44 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 48 00 48 00 00 00 48 00 48 48 00 48 00 48 48 00 00 00 00 00 00 00 00 00 48 00 44 00 00 00 00 00 00 00 00 00 48 00 00 48 00 44 00 00 00 00 44 48 00 00 48 00 00 44 00 00 48 48 00 00 47 00 44 00 00 48 00 00 00 00 00 48 00 48 48 00 00 48 00 00 00 44 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 44 00 44 00 00 00 00 48 00 48 00 48 00 00 00 00 00 48 00 48 00 44 00 48 00 00 48 00 44 00 00 00 00 44 00 00 00 48 00 00 48 00 00 48 00 00 00 00 48 00 00 00 44 00 00 00 00 44 48 00 00 48 00 00 48 48 48 00 48 48 48 00 00 00 00 48 00 00 48 00 00 00 00 48 48 00 00 48 00 00 00 48 00 00 00 48 48 00 00 00 48 00 00 48 48 00 00 00 00 48 00 00 48 00 48 00 00 00 48 00 48 48 48 00 44 48 48 00 44 00 00 48 00 48 00 44 00 48 48 00 48 00 00 00 48 48 48 00 00 48 00 44 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 48 48 00 48 00 48 00 00 44 00 00 00 00 00 00 48 00 00 00 44 48 00 48 48 00 48 00 00 00 48 00 00 00 00 00 00 48 48 00 48 00 00 48 00 00 00 48 48 00 00 48 00 00 00 00 00 48 48 00 00 48 00 00 00 44 00 48 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 44 48 00 48 00 00 48 48 48 48 00 00 00 48 48 48 48 00 00 00 00 00 48 00 48 48 00 00 44 00 00 00 00 44 00 44 00 00 00 44 00 44 48 00 00 48 00 48 48 48 00 48 00 00 48 00 00 00 44 00 00 00 00 44 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 44 00 00 00 00 00 48 00 00 00 00 00 00 00 00 44 00
*/
