.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4b33, %r8
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%r8)
nop
sub $19440, %r8
lea addresses_A_ht+0xe673, %rsi
lea addresses_WC_ht+0x1d1b5, %rdi
clflush (%rsi)
nop
cmp $18738, %rax
mov $32, %rcx
rep movsl
nop
xor $17081, %r11
lea addresses_WT_ht+0x17c33, %rsi
lea addresses_WC_ht+0x1b5b3, %rdi
clflush (%rdi)
nop
nop
nop
cmp $64182, %rbp
mov $52, %rcx
rep movsw
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x8973, %r8
nop
nop
nop
sub $55555, %rbp
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
cmp $9133, %rbp
lea addresses_WT_ht+0x1233, %rax
nop
and %rbp, %rbp
movb $0x61, (%rax)
nop
nop
nop
inc %rcx
lea addresses_A_ht+0xa433, %rcx
nop
and %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
sub $44306, %rbp
lea addresses_A_ht+0x4f33, %rdi
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%rdi)
nop
add $10354, %rcx
lea addresses_D_ht+0xc033, %r11
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x1e433, %r8
sub $22709, %r14
mov (%r8), %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 128}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
