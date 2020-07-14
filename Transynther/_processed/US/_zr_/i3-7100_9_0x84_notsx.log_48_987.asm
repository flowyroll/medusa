.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x147c9, %r13
nop
nop
nop
nop
sub %r10, %r10
mov (%r13), %rbx
dec %rsi
lea addresses_A_ht+0x1ce09, %r15
nop
and %rax, %rax
mov (%r15), %r13d
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x145d1, %r10
nop
nop
nop
cmp %r15, %r15
movb (%r10), %bl
nop
cmp $12732, %rsi
lea addresses_D_ht+0x596d, %rax
clflush (%rax)
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm1
and $0xffffffffffffffc0, %rax
movntdq %xmm1, (%rax)
nop
nop
nop
nop
nop
xor $31759, %rax
lea addresses_D_ht+0xbd09, %rsi
lea addresses_D_ht+0x2709, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r13, %r13
mov $111, %rcx
rep movsw
nop
nop
inc %rdi
lea addresses_D_ht+0x15109, %rsi
lea addresses_D_ht+0x4109, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r10, %r10
mov $20, %rcx
rep movsb
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x149b9, %rbx
nop
nop
add $25697, %rsi
movl $0x61626364, (%rbx)
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rax

// Faulty Load
lea addresses_US+0x6509, %r14
nop
nop
nop
sub %r13, %r13
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 48}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
