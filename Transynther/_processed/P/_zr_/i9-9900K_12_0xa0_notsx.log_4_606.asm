.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc249, %r8
nop
nop
nop
dec %r15
mov (%r8), %r10
nop
nop
nop
nop
nop
and $26886, %rsi
lea addresses_D_ht+0x5249, %r9
clflush (%r9)
nop
nop
nop
nop
add $5083, %r13
movl $0x61626364, (%r9)
sub %r13, %r13
lea addresses_WT_ht+0x1649, %rsi
lea addresses_A_ht+0x10989, %rdi
clflush (%rdi)
dec %r9
mov $117, %rcx
rep movsb
nop
nop
nop
sub $37315, %r14
lea addresses_WT_ht+0x11c9, %rsi
lea addresses_WC_ht+0xe8cd, %rdi
nop
inc %r13
mov $50, %rcx
rep movsl
nop
nop
nop
nop
and $34902, %r14
lea addresses_D_ht+0xd21b, %rsi
nop
cmp $34913, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rsi)
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1b25, %rsi
lea addresses_D_ht+0x10049, %rdi
nop
nop
nop
nop
xor $50437, %r14
mov $96, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $23854, %rcx
lea addresses_D_ht+0xb7c9, %rsi
lea addresses_WC_ht+0x1b3b1, %rdi
nop
nop
nop
sub %r9, %r9
mov $32, %rcx
rep movsb
nop
nop
nop
nop
sub $39421, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Faulty Load
mov $0x449, %rax
nop
nop
sub $26021, %rsi
movb (%rax), %dl
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'00': 4}
00 00 00 00
*/
