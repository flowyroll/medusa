.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x18ebf, %rdx
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rdx)
xor %r10, %r10
lea addresses_WT_ht+0x69f9, %r8
nop
nop
nop
sub $40162, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
nop
xor $55211, %rax
lea addresses_A_ht+0x190c1, %rsi
lea addresses_A_ht+0x346d, %rdi
nop
xor %rdx, %rdx
mov $102, %rcx
rep movsl
sub %rdx, %rdx
lea addresses_D_ht+0x11bc1, %rcx
nop
nop
add $53153, %r15
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x84b7, %rsi
lea addresses_WT_ht+0x901, %rdi
cmp $19480, %rax
mov $68, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x1c4b1, %rsi
add %rcx, %rcx
mov (%rsi), %edi
nop
nop
nop
sub $8384, %rdx
lea addresses_A_ht+0x1ab5b, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rcx), %r10d
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x52c1, %r15
xor %r8, %r8
movb $0x61, (%r15)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x15ef6, %r15
nop
dec %rax
movb (%r15), %r10b
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xcd55, %rsi
lea addresses_A_ht+0x7fc1, %rdi
nop
nop
nop
add $29396, %rdx
mov $30, %rcx
rep movsw
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x1d3c1, %rcx
nop
nop
xor %rax, %rax
mov (%rcx), %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'00': 146}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
